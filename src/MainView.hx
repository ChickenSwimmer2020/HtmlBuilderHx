package ;

import haxe.ui.core.Screen;
import parsing.Parser;
import ui.NativeIFrame;
import haxe.ui.events.UIEvent;
import haxe.ui.containers.VBox;
import haxe.ui.components.TextArea;
import openfl.events.KeyboardEvent;
import backend.Sensing;


@:xml('
<vbox width="100%" height="100%">
    <menubar width="100%">
        <menu text="File">
            <menuitem id="savehtml" text="save"/>
            <menuseparator />
            <menu text="open..">
                <menuitem id="openhtml" text=".html"/>
                <menuitem id="opencss" text=".css"/>
                <menuitem id="openjs" text=".js" disabled="true"/>
            </menu>
        </menu>
        <button id="htmb" text="Build"/>
    </menubar>
    <splitter direction="horizontal" width="100%" height="100%" verticalAlign="center" horizontalAlign="center">
        <tabview width="100%" height="100%">
            <!--html5 editor-->
            <box text="HTML5" width="100%" height="100%">
                <CodeArea id="html5inputarea" text="<!DOCTYPE HTML>\n\n<html>\n</html>" width="100%" height="100%"/>
            </box>

            <!--CSS editor-->
            <box text="CSS" width="100%" height="100%">
                <CodeArea id="cssinputarea" text="/* Add your CSS here */" width="100%" height="100%"/>
            </box>

            <!--JS editor (future)-->
            <box text="JavaScript" width="100%" height="100%" disabled="true">
                <button text="Page 2" />
            </box>
        </tabview>
        
        <!-- preview space-->
        <splitter id="previewsplitt" direction="horizontal" width="50%" height="100%" verticalAlign="center" horizontalAlign="center">
            <nativeiframe id="ifr" url="https://www.youtube.com" width="100%" height="100%"/>
        </splitter>
    </splitter>
</vbox>
')
class MainView extends VBox {
    public function new() {
        super();
        html5inputarea.text = NativeIFrame.DefaultHtml;
        cssinputarea.text = NativeIFrame.DefaultCSS;
        previewsplitt.registerEvent(UIEvent.RESIZE, function(_:UIEvent) {
            previewsplitt.findComponent("ifr", NativeIFrame, true, "id").resize();
        });

        html5inputarea.tabEnabled=false; //tab indenting is good.

        htmb.onClick = (_)->{ //TODO: html auto-complete/sensing.
            if(Sensing.checkForErrorsCSS(cssinputarea.text)) ifr.reload(Parser.buildOut(html5inputarea.text, cssinputarea.text));
        };
    }
}