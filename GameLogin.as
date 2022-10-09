//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import GameLogin.*;

    public class GameLogin extends MovieClip {

        public var ann1:SimpleButton;
        public var ann2:SimpleButton;
        public var hxwz:SimpleButton;

        public function GameLogin(){
            var _local1:* = null;
            var _local2:* = (this as MovieClip);
            var _local3:* = 0;
            while (_local3 < _local2.numChildren) {
                _local1 = (_local2.getChildAt(_local3) as SimpleButton);
                if (_local1){
                    _local1.addEventListener(MouseEvent.CLICK, this.mcClick);
                };
                _local3++;
            };
        }
        private function mcClick(_arg1:MouseEvent):void{
            this.dispatchEvent(new GameSelectEvent(GameSelectEvent.GAME_EVENT, _arg1.target.name));
        }

    }
}//package 
