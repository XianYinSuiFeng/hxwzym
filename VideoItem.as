//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;

    public class VideoItem extends MovieClip {

        public var btn:SimpleButton;
        public var decs:TextField;
        public var txt:TextField;
        private var _ob:Object;

        public function VideoItem(){
            this.btn.addEventListener(MouseEvent.CLICK, this.onClick);
        }
        private function onClick(_arg1:MouseEvent):void{
            var _local2 = this.loaderInfo.applicationDomain.getDefinition("SystemEye.SystemEvent");
            _local2["loadVideo"](this._ob.url);
            this.parent.parent.removeChild(this.parent);
        }
        public function setItem(_arg1:Object):void{
            this._ob = _arg1;
            this.visible = !((_arg1 == null));
            if (!this.visible){
                return;
            };
            this.txt.text = _arg1.title;
            this.decs.text = ((("作者：" + _arg1.author) + "  说明：") + _arg1.decs);
        }

    }
}//package 
