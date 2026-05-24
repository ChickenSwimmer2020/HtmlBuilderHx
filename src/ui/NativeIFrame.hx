package ui;


import openfl.geom.Rectangle;
import openfl.media.StageWebView;
import haxe.ui.containers.Box;

using StringTools;
class NativeIFrame extends Box {
    public static final DefaultHtml = "<!DOCTYPE HTML>
<head>
    <h1>Input some code!<br>(Open the sidebar.)</h1>
</head>";
    public static final DefaultCSS = "body {
    background-color: lightblue;
}
h1 {
    color: navy;
}";
    public var _frame:StageWebView;
    public function new() {
        super();
        trace('made new iframe.');
        _frame = new StageWebView();
    }

    override function onReady() {
        _frame.stage = this.stage;
        _frame.viewPort = new Rectangle(screenLeft, screenTop, width, height);
        _frame.loadString(DefaultHtml, "text/html");
    }

    public var url(get, set):String;
    private inline function get_url():String return _frame.location;
    private inline function set_url(val:String):String {
        reload(val); //so it will automatically swap between links and proper code.
        return val;
    }

    override private function onResized() {
        super.onResized();
        resize();
    }

    public inline function resize() _frame.viewPort = new Rectangle(screenLeft, screenTop, width, height);

    public inline function reload(html:String){
        if(html.startsWith("https://")) _frame.loadURL(html); else _frame.loadString(html, "text/html");
    }
}