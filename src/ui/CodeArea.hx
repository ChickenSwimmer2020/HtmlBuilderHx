package ui;

import openfl.events.KeyboardEvent;
import openfl.text.TextField;
import motion.easing.Bounce;
import openfl.geom.Point;
import openfl.events.Event;
import openfl.Lib;
import openfl.display.Sprite;
import openfl.ui.Keyboard;
import haxe.ui.events.UIEvent;
import haxe.ui.components.TextArea;
import backend.AutoComplete;
import backend.ClipBoard;

using StringTools;

//an enhancement for TextArea, including things like AutoComplete, and more.
class CodeArea extends TextArea {
    public var autoCompletePopup:AutoCompleteToolTip;
    private var keysPressed:Map<Int, Bool> = new Map<Int, Bool>();
    
    // A flag to prevent history pollution during an active undo operation
    private var isReverting:Bool = false; 

    public function new() {
        super();
        autoCompletePopup = new AutoCompleteToolTip();

        registerEvent(UIEvent.CHANGE, (_:UIEvent)->{
            if (focus) {
                // CRITICAL: If the change was caused by our own Undo function, 
                // do NOT save it back into the history stack.
                if (isReverting) return; 

                attemptAutoComplete();
            }
        });

        // Simplified Frame Loop: Only handle tooltip visibility here
        addEventListener(Event.ENTER_FRAME, (_)->{
            if (focus) {
                autoCompletePopup.visible = visible;
            }
        });

        // Handle Combo Logic safely within KeyDown (fires once per physical press)
        addEventListener(KeyboardEvent.KEY_DOWN, (e:KeyboardEvent)->{
            if (!focus) return;
            
            keysPressed.set(e.keyCode, true);

            // Check for Ctrl + Z combo right here
            if (keysPressed.get(Keyboard.CONTROL) && e.keyCode == Keyboard.Z) {
                
                // Set the guard flag BEFORE changing text to block UIEvent.CHANGE saving
                isReverting = true; 
                
                //ClipBoard.revertChanges(switch(curMode){case 0:"html";case 1:"css";case 2:"js";default:"";}, this);
                
                // Lower the flag now that the text generation is finished
                isReverting = false; 
            }
        });

        addEventListener(KeyboardEvent.KEY_UP, (e:KeyboardEvent)->{
            if (focus) {
                keysPressed.set(e.keyCode, false);
            }
        });
    }

    override function onReady() {
        Lib.application.window.stage.addChild(autoCompletePopup);
    }

    private var curMode:Int=-1; //0=html, 1=css, 2=js
    private function attemptAutoComplete() {
        if(this.text.split('\n')[0]=="<!DOCTYPE HTML>") curMode=0; //if the first line is the DOCTYPE, we aint in css mode.
        //else if(this.text.contains("body {")) curMode=1; //if we have a body tag, we are probably in html mode. //TODO: make this actually better than whateaver the fuck this is.
        else curMode=1; //otherwise, we are probably in js mode.
        //ClipBoard.saveChanges(switch(curMode){case 0:"html";case 1:"css";case 2:"js";default:"";}, this);
        var startChar:String="";
        var i:Int=getTextInput().caretIndex-1;
        while(i>=0) {
            if(text.charAt(i)=='\t' || (text.charAt(i)=="\n" || text.charAt(i)=="\r") || text.charAt(i)==" ") break;
            startChar=text.charAt(i);
            i--;
        }
        switch(curMode){
            case 1: AutoComplete.findCompletableCSS(text, getTextInput().caretIndex, startChar, autoCompletePopup);
            default: trace('mode is $curMode');
        }
    }
}

//yeah, fuck this im doing this in openfl standards.
class AutoCompleteToolTip extends Sprite {
    private final Offset:Point = new Point(-50, 0);
    private var titleText:TextField;
    private var descText:TextField;
    private var linkText:TextField;
    public var title:String = "default";
    public var desc:String = "test dec";
    public var link:String = "none";

    public var shouldShow:Bool=false;
    public function new() {
        super();
        titleText = new TextField();
        titleText.selectable=false;
        titleText.border=false;
        descText = new TextField();
        descText.selectable=false;
        descText.border=false;
        linkText = new TextField();
        linkText.selectable=false;
        linkText.border=false;
        linkText.textColor = 0xFF0000FF;
        linkText.setTextFormat(new openfl.text.TextFormat(null, 12, 0xFF0000FF, false, false, true, link));

        addChild(titleText);
        addChild(descText);
        addChild(linkText);
        descText.y+=titleText.height;
        linkText.y = (150-20);

        addEventListener(Event.ENTER_FRAME, (_)->{
            shouldShow?show(title, desc, link):hide();
        });
    }

    public function show(text:String, desc:String, ?link:String){
        this.graphics.clear();
        titleText.text = text;
        titleText.textColor = 0xFFFFFF;
        descText.text = desc;
        descText.textColor = 0xFFFFFF;
        linkText.text = link??"";
        linkText.setTextFormat(new openfl.text.TextFormat(null, 20, 0xFF0000FF, false, false, true, link??null));

        this.graphics.beginFill(0x4D4D4D, 1);
            this.graphics.drawRect(mouseX-Offset.x, mouseY-Offset.y, 200, 150);
        this.graphics.endFill();

        titleText.x = (mouseX-Offset.x);
        titleText.y = (mouseY-Offset.y);

        descText.x = (mouseX-Offset.x);
        descText.y = ((mouseY-Offset.y) + titleText.textHeight);

        linkText.x = (mouseX-Offset.x);
        linkText.y = ((mouseY-Offset.y)+150)-(linkText.textHeight);
        

        titleText.visible=true;
        descText.visible=true;
        linkText.visible=true;
    }

    public function hide() {
        this.graphics.clear();
        titleText.visible=false;
        descText.visible=false;
        linkText.visible=false;
    }
}