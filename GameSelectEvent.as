//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;

    public class GameSelectEvent extends Event {

        public static const GAME_EVENT:String = "gameEvent";

        public var clickString:String;

        public function GameSelectEvent(_arg1:String, _arg2:String):void{
            this.clickString = _arg2;
            super(_arg1);
        }
    }
}//package 
