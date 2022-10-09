//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;
    import flash.filters.*;

    public class RankLayer extends MovieClip {

        public var fh:SimpleButton;
        public var fj:SimpleButton;
        public var go:SimpleButton;
        public var last:SimpleButton;
        public var mc:MovieClip;
        public var next:SimpleButton;
        public var p:TextField;
        public var stringtxt:TextField;
        private var _mc:MovieClip;
        private var _num:int = 0;
        private var _btn:RankChild;

        public function RankLayer(){
            var _local1:int;
            var _local2:RankChild;
            super();
            this._mc = new MovieClip();
            this.addChild(this._mc);
            this.mc.visible = false;
            _local1 = 0;
            while (_local1 < 7) {
                _local2 = new RankChild();
                _local2.x = 10;
                _local2.y = (70 + (55 * _local1));
                _local2.name = ("btn" + _local1);
                _local2.alpha = 0.9;
                _local2.addEventListener(MouseEvent.CLICK, this.click);
                _local2.addEventListener(MouseEvent.MOUSE_OVER, this.over);
                _local2.addEventListener(MouseEvent.MOUSE_OUT, this.out);
                this._mc.addChild(_local2);
                _local1++;
            };
            _local1 = 0;
            while (_local1 < this.numChildren) {
                if ((this.getChildAt(_local1) as SimpleButton)){
                    (this.getChildAt(_local1) as SimpleButton).addEventListener(MouseEvent.CLICK, this.click);
                };
                _local1++;
            };
        }
        public function showData(_arg1:Array):void{
            var _local2:int;
            this.allVisible(false);
            this.mc.visible = false;
            if (_arg1){
                this._num = _arg1.length;
                _local2 = 0;
                while (_local2 < this._num) {
                    (this._mc.getChildAt(_local2) as RankChild).setData(_arg1[_local2]);
                    _local2++;
                };
            };
        }
        public function setString(_arg1:String):void{
            this.stringtxt.text = _arg1;
        }
        public function setPage(_arg1:int):void{
            this.p.text = String(_arg1);
        }
        public function getPage():int{
            return (int(this.p.text));
        }
        private function over(_arg1:MouseEvent):void{
            _arg1.target.alpha = 1;
        }
        private function out(_arg1:MouseEvent):void{
            _arg1.target.alpha = 0.9;
        }
        private function allVisible(_arg1:Boolean):void{
            var _local2:int;
            while (_local2 < this._mc.numChildren) {
                this._mc.getChildAt(_local2).visible = _arg1;
                if (_local2 >= this._num){
                    this._mc.getChildAt(_local2).visible = false;
                };
                this._mc.getChildAt(_local2).y = (70 + (55 * _local2));
                _local2++;
            };
        }
        public function getMCBoolean():Boolean{
            return (this.mc.visible);
        }
        public function getMCData():Object{
            return (this._btn.dataz);
        }
        public function clearMc():void{
            while (this.mc.numChildren > 1) {
                this.mc.getChildAt(1).parent.removeChild(this.mc.getChildAt(1));
            };
        }
        public function addMC(_arg1:BitmapData, _arg2:int):void{
            if (_arg2 == 0){
                return;
            };
            var _local3:Bitmap = new Bitmap(_arg1);
            var _local4:int = (this.mc.width / 50);
            var _local5:int = int((this.mc.numChildren / 2));
            _local3.x = ((20 + (50 * _local5)) - (int((_local5 / _local4)) * (50 * _local4)));
            _local3.y = (10 + (int((_local5 / _local4)) * 50));
            this.mc.addChild(_local3);
            var _local6:TextField = new TextField();
            var _local7:int = int(_arg2);
            _local6.text = ((_local7 >= 100)) ? "MAX" : ("Lv." + String(_local7));
            this.mc.addChild(_local6);
            _local6.mouseEnabled = false;
            _local6.textColor = 0xFFFF00;
            _local6.width = 50;
            _local6.height = 50;
            _local6.filters = [new DropShadowFilter(0, 45, 0, 1, 4, 4, 4)];
            _local6.x = _local3.x;
            _local6.y = _local3.y;
        }
        private function click(_arg1:MouseEvent):void{
            switch (_arg1.target.name){
                case "last":
                    this.p.text = String((this.getPage() - 1));
                    if (this.getPage() <= 0){
                        this.p.text = "1";
                        return;
                    };
                    this.mc.visible = false;
                    this.allVisible(false);
                    break;
                case "next":
                    this.p.text = String((this.getPage() + 1));
                    this.mc.visible = false;
                    this.allVisible(false);
                    break;
            };
            if ((((this.stringtxt.text == "单人综合战力排行榜")) && (!((_arg1.target.name.indexOf("btn") == -1))))){
                return;
            };
            if (_arg1.target.name.indexOf("btn") != -1){
                this._btn = (_arg1.target as RankChild);
                this.mc.visible = !(this.mc.visible);
                if (this.mc.visible){
                    this.allVisible(false);
                    _arg1.target.y = 70;
                    _arg1.target.visible = true;
                } else {
                    this.allVisible(true);
                };
            };
            this.dispatchEvent(new RankEvent(RankEvent.RANK_CLICK_EVENT, _arg1.target.name));
        }

    }
}//package 
