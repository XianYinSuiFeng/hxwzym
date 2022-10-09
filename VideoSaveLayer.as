//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;

    public class VideoSaveLayer extends MovieClip {

        public var no:SimpleButton;
        public var txt:TextField;
        public var yes:SimpleButton;

        public function VideoSaveLayer(){
            this.no.addEventListener(MouseEvent.CLICK, this.onClick);
            this.addEventListener(Event.ENTER_FRAME, this.onFrame);
        }
        private function onFrame(_arg1:Event):void{
            if (this.parent){
                this.parent.addChild(this);
            } else {
                this.removeEventListener(Event.ENTER_FRAME, this.onFrame);
            };
        }
        private function onClick(_arg1:MouseEvent):void{
            this.parent.removeChild(this);
        }
        public function save():SimpleButton{
            return (this.yes);
        }

    }
}//package 
