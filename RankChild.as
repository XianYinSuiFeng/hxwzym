//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.display.*;
    import flash.text.*;
    import p2p2016.*;

    public class RankChild extends MovieClip {

        public var mc:MovieClip;
        public var nametxt:TextField;
        public var qmname:TextField;
        public var ranktxt:TextField;
        public var dataz:Object;

        public function RankChild(){
            var _local1:int;
            while (_local1 < this.numChildren) {
                if ((this.getChildAt(_local1) as TextField)){
                    (this.getChildAt(_local1) as TextField).mouseEnabled = false;
                };
                _local1++;
            };
            this.mc.ctxt.mouseEnabled = false;
            this.mc.rtxt.mouseEnabled = false;
        }
        public function setData(_arg1:Object):void{
            var _local2:Object;
            if (_arg1.extra){
                _local2 = JSON.parse(P2PData.extract(_arg1.extra));
            };
            this.dataz = _arg1;
            this.visible = true;
            this.nametxt.text = _arg1.userName;
            var _local3:int;
            var _local4:int;
            if (((_local2) && (_local2.role))){
                _local3 = String(_local2.role).split(",").length;
                if (_local3 >= 2){
                    _local3--;
                };
            };
            if (((_local2) && (_local2.rnum))){
                _local4 = (_local2.rnum) ? _local2.rnum : 0;
            };
            if (_local4 != -1){
                this.ranktxt.text = (((((("排行[" + _arg1.rank) + "]  战力[") + _arg1.score) + "]  使用角色[") + ((_local4 == 0)) ? "?" : _local4) + "]个");
            } else {
                this.ranktxt.text = (((("排行[" + _arg1.rank) + "]  单人总战力[") + _arg1.score) + "]");
            };
            if (_local2){
                this.qmname.text = (_local2.itxt) ? _local2.itxt : "无";
            } else {
                this.qmname.text = "无";
            };
            if (((_local2) && (_local2.ch))){
                this.mc.visible = true;
                this.mc.ctxt.text = _local2.ch;
                this.mc.rtxt.text = (_local2.rh) ? _local2.rh : "未定义";
            } else {
                this.mc.visible = false;
            };
        }

    }
}//package 
