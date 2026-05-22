package ;

import ui.NativeIFrame;
import haxe.ui.events.UIEvent;
import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:xml('
<vbox width="100%" height="100%">
    <splitter direction="horizontal" width="100%" height="100%" verticalAlign="center" horizontalAlign="center">
        <tabview width="100%" height="100%">
            <!--html5 editor-->
            <box text="HTML5" width="100%" height="100%">
                <textarea id="html5inputarea" text="<!DOCTYPE HTML>\n\n<html>\n</html>" width="100%" height="100%"/>
            </box>

            <!--CSS editor-->
            <box text="CSS">
                <button text="Page 2" />
            </box>

            <!--JS editor (future)-->
            <box text="JavaScript" disabled="true">
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
        previewsplitt.registerEvent(UIEvent.RESIZE, function(_:UIEvent) {
            previewsplitt.findComponent("ifr", NativeIFrame, true, "id").resize();
        });
    }
}