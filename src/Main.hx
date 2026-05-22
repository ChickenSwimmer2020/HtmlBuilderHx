package ;

import haxe.ui.HaxeUIApp;

class Main {
    public static var app:HaxeUIApp;
    public static function main() {
        app = new HaxeUIApp();
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
    }
}
