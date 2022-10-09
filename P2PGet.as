//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;

    public class P2PGet extends MovieClip {

        public var key:TextField;
        public var no:SimpleButton;
        public var yes:SimpleButton;
        private var _call:Function;
        private var _key:String;

        public function P2PGet(_arg1:Function=null, _arg2:String=""){
            this._call = _arg1;
            this._key = _arg2;
            this.key.text = _arg2;
            this.yes.addEventListener(MouseEvent.CLICK, this.click);
            this.no.addEventListener(MouseEvent.CLICK, this.click);
        }
        private function click(_arg1:MouseEvent):void{
            if (this._call == null){
                return;
            };
            if (_arg1.target == this.yes){
                this._call(this._key);
            } else {
                this._call(null);
            };
            this.parent.removeChild(this);
        }

    }
}//package 
