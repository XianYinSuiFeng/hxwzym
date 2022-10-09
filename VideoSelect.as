//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;

    public class VideoSelect extends MovieClip {

        public var btn:SimpleButton;
        public var mc:MovieClip;

        public function VideoSelect(){
            this.mc.mouseEnabled = false;
            this.btn.addEventListener(MouseEvent.CLICK, this.onClick);
        }
        private function onClick(_arg1:MouseEvent):void{
            this.select = !(this.select);
        }
        public function set select(_arg1:Boolean):void{
            this.mc.visible = _arg1;
        }
        public function get select():Boolean{
            return (this.mc.visible);
        }

    }
}//package 
