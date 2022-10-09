//Created by Action Script Viewer - http://www.buraks.com/asv
package {

    public class cint {

        private var a:String;
        private var b:String;
        private var ar:Array;
        private var d:String;
        private var tlen:int;
        private var nlen:int;

        public function cint(_arg1:int=0){
            this.value = _arg1;
            this.value1 = _arg1;
            this.value2 = _arg1;
        }
        public function get value():int{
            return ((int(this.a) + int(this.b)));
        }
        public function set value(_arg1:int):void{
            var _local2:* = this.splitVal(_arg1);
            this.a = String(_local2[0]);
            this.b = String(_local2[1]);
        }
        private function splitVal(_arg1:int):Array{
            var _local2:* = 999999;
            var _local3:* = int(this.a);
            var _local4:* = int(this.b);
            _local2 = (((int.MAX_VALUE - _local2) < _local3)) ? (int.MAX_VALUE - _local3) : _local2;
            _local2 = (((int.MAX_VALUE - _local2) < _local4)) ? (int.MAX_VALUE - _local4) : _local2;
            var _local5:* = (Math.random() * _local2);
            var _local6:* = (_arg1 - _local5);
            var _local7:* = (_arg1 - _local6);
            return ([_local6, _local7]);
        }
        public function add(_arg1:int):void{
            var _local2:* = (this.value + _arg1);
            var _local3:* = this.splitVal(_local2);
            this.a = String(_local3[0]);
            this.b = String(_local3[1]);
        }
        public function sub(_arg1:int):void{
            var _local2:* = (this.value - _arg1);
            var _local3:* = this.splitVal(_arg1);
            this.a = String(_local3[0]);
            this.b = String(_local3[1]);
        }
        public function multi(_arg1:int):void{
            var _local2:* = (this.value * _arg1);
            var _local3:* = this.splitVal(_local2);
            this.a = String(_local3[0]);
            this.b = String(_local3[1]);
        }
        public function divide(_arg1:int):void{
            var _local2:* = (this.value / _arg1);
            var _local3:* = this.splitVal(_local2);
            this.a = String(_local3[0]);
            this.b = String(_local3[1]);
        }
        public function get value1():int{
            var _local1:* = 0;
            var _local2:* = "";
            var _local3:* = this.ar.length;
            _local1 = 0;
            while (_local1 < _local3) {
                _local2 = (_local2 + this.ar[_local1]);
                _local1++;
            };
            return (int(_local2));
        }
        public function set value1(_arg1:int):void{
            this.ar = this.splitVal1(_arg1);
            this.value = _arg1;
            this.value2 = _arg1;
        }
        private function splitVal1(_arg1:int):Array{
            var _local2:* = 0;
            var _local3:* = _arg1.toString();
            var _local4:* = _local3.length;
            var _local5:* = [];
            _local2 = 0;
            while (_local2 < _local4) {
                _local5[_local2] = _local3.charAt(_local2);
                _local2++;
            };
            return (_local5);
        }
        public function get value2():int{
            var _local1:* = 0;
            _local1 = int(this.d.substr(this.tlen, this.nlen));
            return (_local1);
        }
        public function set value2(_arg1:int):void{
            var _local2:* = 9999;
            var _local3:* = (Math.random() * _local2);
            var _local4:* = (Math.random() * _local2);
            this.tlen = String(_local3).length;
            this.nlen = String(_arg1).length;
            this.d = ((String(_local3) + String(_arg1)) + String(_local4));
        }
        public function add1(_arg1:int):void{
            var _local2:* = this.value1;
            var _local3:* = (_arg1 + _local2);
            this.value1 = _local3;
        }

    }
}//package 
