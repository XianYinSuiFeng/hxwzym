//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;
    import game2016.*;
    import flash.ui.*;
    import KeyMain.*;

    public class KeyMain extends MovieClip {

        public var YaoGan:MovieClip;
        public var key1:MovieClip;
        public var key3:MovieClip;
        private var keys:Object;
        private var _leftTouchID:int = 0;
        private var _leftKey:int = 0;

        public function KeyMain(){
            var _local1:* = null;
            var _local2:* = 0;
            this.keys = RoleData.keys;
            this.addEventListener(Event.ENTER_FRAME, this.onFrame);
            Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
            var _local3:* = 0;
            while (_local3 < this.numChildren) {
                _local1 = (this.getChildAt(_local3) as MovieClip);
                if (_local1 != this["YaoGan"]){
                    _local2 = 0;
                    while (_local2 < _local1.numChildren) {
                        _local1.getChildAt(_local2)["txt"].text = _local1.getChildAt(_local2).name;
                        _local1.getChildAt(_local2)["txt"].alpha = 0.75;
                        (_local1.getChildAt(_local2)["txt"] as TextField).mouseEnabled = false;
                        _local2++;
                    };
                };
                _local3++;
            };
            this.onInit(null);
        }
        private function onInit(_arg1:Event):void{
            this.addEventListener(TouchEvent.TOUCH_BEGIN, this.onDown);
            this.addEventListener(TouchEvent.TOUCH_END, this.onUp);
            this.addEventListener(TouchEvent.TOUCH_MOVE, this.onMove);
            this.addEventListener(TouchEvent.TOUCH_OUT, this.onOut);
            this["YaoGan"].y = ((Main.contentHeight - (this["YaoGan"].height / 2)) - 10);
            this["key3"].y = Main.contentHeight;
        }
        private function onMove(_arg1:TouchEvent):void{
            var _local2:* = null;
            var _local3:* = ["A", "S", "D", "W"];
            if (_arg1.target == this["YaoGan"]){
                _local2 = this.getKeyFrom(_arg1);
                this._leftTouchID = _arg1.touchPointID;
                if (this._leftKey != this.keys[_local2]){
                    if (this._leftKey != 0){
                        stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, this._leftKey));
                    };
                    this._leftKey = this.keys[_local2];
                    stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, this.keys[_local2]));
                };
            };
        }
        private function onOut(_arg1:TouchEvent):void{
            var _local2:* = this.getKeyFrom(_arg1);
            stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, this.keys[_local2]));
            if (_arg1.touchPointID == this._leftTouchID){
                this._leftKey = 0;
                if (this._leftKey != this.keys[_local2]){
                    stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, this._leftKey));
                };
            };
        }
        private function onDown(_arg1:TouchEvent):void{
            var _local2:* = this.getKeyFrom(_arg1);
            stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, this.keys[_local2]));
        }
        private function onUp(_arg1:TouchEvent):void{
            var _local2:* = this.getKeyFrom(_arg1);
            var _local3:* = ["A", "S", "D", "W"];
            if (_local3.indexOf(_local2) != -1){
                this._leftTouchID = _arg1.touchPointID;
                this._leftKey = 0;
            };
            this.onFUp(_local2);
        }
        private function onFrame(_arg1:Event):void{
            if (this.parent){
                this.parent.addChild(this);
            };
        }
        public function onFDown(_arg1:String):void{
            stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, this.keys[_arg1]));
        }
        public function onFUp(_arg1:String):void{
            stage.dispatchEvent(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, this.keys[_arg1]));
        }
        public function getKeyFrom(_arg1:TouchEvent):String{
            if (_arg1.target == this["YaoGan"]){
                if (Math.abs((this.mouseX - this["YaoGan"].x)) > Math.abs((this.mouseY - this["YaoGan"].y))){
                    if (this.mouseX < this["YaoGan"].x){
                        return ("A");
                    };
                    return ("D");
                };
                if (this.mouseY < this["YaoGan"].y){
                    return ("W");
                };
                return ("S");
            };
            return (_arg1.target.name);
        }

    }
}//package 
