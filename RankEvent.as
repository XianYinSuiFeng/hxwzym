//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;

    public class RankEvent extends Event {

        public static const RANK_CLICK_EVENT:String = "rank_click_event";

        public var data:String = "";

        public function RankEvent(_arg1:String, _arg2:String){
            this.data = _arg2;
            super(_arg1);
        }
    }
}//package 
