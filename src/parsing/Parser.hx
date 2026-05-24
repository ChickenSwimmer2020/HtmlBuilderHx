package parsing;

class Parser {


    public static function buildOut(htm:String, css:String):String {
        if(css=="") return htm; //dont even input the css if we dont have any.
        var o:String = htm;
        var headLine:Int = o.indexOf("<head>");
        if(headLine != -1) {
            var headEndLine:Int = o.indexOf("</head>");
            if(headEndLine != -1) {
                var headContent = o.substring(headLine + 6, headEndLine);
                headContent += "\n<style>\n" + css + "\n</style>\n";
                o = o.substring(0, headLine + 6) + headContent + o.substring(headEndLine);
            }else{
                trace('PARSING ERROR: No ending to <head> tag, aborting.');
            }
        }else{
            trace('PARSING ERROR: No <head> tag found. aborting build...');
        }
        return o;
    }
}