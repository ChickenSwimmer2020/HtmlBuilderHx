package backend;

import ui.CodeArea;


//ControlZ support
//disabled until i can get it to function properly.
class ClipBoard {
    public static final MAX_SAVES:Int = 25; // so we dont overload ram or whatever.
    public static var goingBack:Map<String, Int>=[
        "js"=>0,
        "html"=>0,
        "css"=>0
    ];
    public static var savedChanges:Map<String, Array<String>>=[
        "js"=>[],
        "html"=>[],
        "css"=>[],
    ]; //area => saved text

    public static function revertChanges(area:String, textBox:CodeArea) { //undo.
        if(savedChanges.get(area)!=null && textBox!=null) {
            //TODO: implementation for choosing one by holding alt as well.

            textBox.text = savedChanges.get(area)[goingBack.get(area)];
            if(goingBack.get(area)!=0){
                goingBack.set(area, goingBack.get(area)-1);
            }
            trace(savedChanges);
            trace(goingBack);
        }
        
    }
    public static function saveChanges(area:String, textBox:CodeArea) {
        var history = savedChanges.get(area);
        if (history == null) return;

        // Prevent saving consecutive identical states
        if (history.length > 0 && history[history.length - 1] == textBox.text) {
            return;
        }

        if (history.length >= MAX_SAVES) {
            history.shift(); // Drops the oldest entry (index 0) cleanly
        }

        history.push(textBox.text);
        
        // Sync your history index pointer directly to the latest item in the array
        goingBack.set(area, history.length - 1); 

        trace(savedChanges);
        trace(goingBack);
    }
}