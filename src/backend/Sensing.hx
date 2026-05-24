package backend;

import haxe.ui.util.Timer;
import openfl.Lib;
import haxe.ui.core.Screen;
import haxe.ui.notifications.Notification;
import haxe.ui.notifications.NotificationType;
import haxe.ui.notifications.NotificationManager;
using StringTools;
//this is for finding errors in your code and being able to fix them.
class Sensing {
    public static final cssRules:Map<String, Array<String>>=[
        "FALLBACK" => [
            "Fallback_description",
            "fallback fix option 1",
            "fallback fix option 2",
            "fallback fix option 3"
        ],
        "border-style" => [
            "Borderstyle can only have one of the following formats:",
            "dotted",
            "dashed",
            "solid",
            "double",
            "groove",
            "ridge",
            "inset",
            "outset",
            "none",
            "hidden"
        ]
    ];

    static var openedBlocks:Array<{c:Bool, l:Int}>=[];
    static var isStyleBlock:Array<Bool>=[];
    public static function checkForErrorsCSS(text:String):Bool {
        openedBlocks = [];
        isStyleBlock = [];
        //so we can start with the basic ones
        for(l in 0...text.split('\n').length) {
            var line:String = text.trim().split('\n')[l];
            if(line==null) break; //end for-loop if a null line is found.
            line = line.trim(); //just in-case
            if(line=="" || (line=="\n"||line=="\r")) continue; //ignore empty lines.
            isStyleBlock[l] = (line.startsWith('.') || (line.indexOf('{')!=-1 || line.indexOf("}")!=-1));

            if(isStyleBlock[l]) { //either starts with a custom class, or we're opening a function.
                if(line.indexOf("}") != -1) {
                    // find the last unclosed block and close it
                    var k = openedBlocks.length - 1;
                    while (k >= 0) {
                        if (openedBlocks[k].c == false) {
                            trace('removed L#${openedBlocks[k].l} from opened styles');
                            openedBlocks[k].c = true;
                            break;
                        }
                        k--;
                    }
                }else{
                    trace('added L$l to opened style blocks.');
                    openedBlocks.push({c: false, l: l});
                }
            }else{
                if(!line.endsWith(';')) {
                    throwError('Line #$l is missing a semicolon');
                    return false;
                }
            }
        }


        trace(openedBlocks);
        for(block in openedBlocks) {
            if(block.c == true) continue;
            else {
                throwError('Style Blocks at L#${[for(block in openedBlocks){if(!block.c)block.l;}]} were not closed!');
                return false;
            }
        }
        return true;
    }

    public static function throwError(err:String) {
        var myNotif:Notification = new Notification();
        myNotif.notificationData = {
            title: "Error!",
            body: err,
            type: NotificationType.Error,
            expiryMs: 3000
        };
        @:privateAccess NotificationManager.instance.pushNotification(myNotif);
        Timer.delay(function () {
            myNotif.left = 20;
            myNotif.top = (Screen.instance.height-20) - myNotif.height;
        }, 15);
    }
    public static function throwWarn(war:String) {
        var myNotif:Notification = new Notification();
        myNotif.notificationData = {
            title: "Warning!",
            body: war,
            type: NotificationType.Warning,
            expiryMs: 3000
        };
        @:privateAccess NotificationManager.instance.pushNotification(myNotif);
        Timer.delay(function () {
            myNotif.left = 20;
            myNotif.top = (Screen.instance.height-20) - myNotif.height;
        }, 15);
    }
}