//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;

    public class P2PMain extends MovieClip {

        public var btn:SimpleButton;
        public var log:TextField;
        public var login:TextField;
        public var mylogin:TextField;
        private var _mykey:String = "";
        public var connectCall:Function;

        public function P2PMain(_arg1:String=""):void{
            this._mykey = _arg1;
            this.mylogin.text = _arg1;
            (this.log as TextField).appendText("\n");
            this.btn.addEventListener(MouseEvent.CLICK, this.click);
        }
        private function click(_arg1:MouseEvent):void{
            if (this.connectCall != null){
                this.connectCall(this.login.text);
            };
        }
        public function pushString(_arg1:String):void{
            (this.log as TextField).appendText((_arg1 + "\n"));
            (this.log as TextField).scrollV = (this.log as TextField).maxScrollV;
        }

    }
}//package 
