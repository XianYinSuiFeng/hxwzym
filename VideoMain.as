//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;

    public class VideoMain extends MovieClip {

        public var a1:VideoItem;
        public var a2:VideoItem;
        public var a3:VideoItem;
        public var a4:VideoItem;
        public var a5:VideoItem;
        public var a6:VideoItem;
        public var a7:VideoItem;
        public var back:SimpleButton;
        public var last:SimpleButton;
        public var next:SimpleButton;
        private var _array:Array;
        private var _index:int = 0;

        public function VideoMain(_arg1:Array=null){
            this._array = [];
            this._array = ((_arg1 == null)) ? [{title:"内容测试"}] : _arg1;
            this.last.addEventListener(MouseEvent.CLICK, this.onClick);
            this.next.addEventListener(MouseEvent.CLICK, this.onClick);
            this.back.addEventListener(MouseEvent.CLICK, this.onClick);
            this.update();
        }
        public function update(_arg1:int=0):void{
            var _local2:* = 1;
            while (_local2 <= 7) {
                (this[("a" + _local2)] as VideoItem).setItem(this._array[(_arg1 + (_local2 - 1))]);
                _local2++;
            };
        }
        public function onClick(_arg1:MouseEvent):void{
            switch (_arg1.target.name){
                case "last":
                    if (this._index > 0){
                        this._index = (this._index - 7);
                    };
                    this.update(this._index);
                    break;
                case "next":
                    if (this._index < (this._array.length - 7)){
                        this._index = (this._index + 7);
                    };
                    this.update(this._index);
                    break;
                case "back":
                    this.parent.removeChild(this);
                    break;
            };
        }

    }
}//package 
