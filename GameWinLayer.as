//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;
    import flash.ui.*;
    import GameWinLayer.*;

    public class GameWinLayer extends MovieClip {

        private static var _fight:int = 0;
        private static var _fightPro:Number = 0;

        public var mc:MovieClip;
        public var message:MovieClip;
        public var text1:TextField;
        public var text2:TextField;
        public var text3:TextField;
        private var _toFight:int = 0;
        private var _toFightPro:Number = 0;

        public function GameWinLayer(){
            addFrameScript(19, this.frame20);
            this.addEventListener(Event.ADDED_TO_STAGE, this.init);
        }
        private function init(_arg1:Event):void{
            stage.addEventListener(KeyboardEvent.KEY_UP, this.up);
        }
        private function up(_arg1:KeyboardEvent):void{
            if (_arg1.keyCode == Keyboard.J){
                stage.removeEventListener(KeyboardEvent.KEY_UP, this.up);
                this.dispatchEvent(new GameWinEvent(GameWinEvent.GAME_CONNECT));
            };
        }
        private function click(_arg1:MouseEvent):void{
            this.dispatchEvent(new GameWinEvent(GameWinEvent.GAME_CONNECT));
        }
        public function setND(_arg1:String):void{
            this.text3.text = _arg1;
        }
        public function initFightAndPro(_arg1:int, _arg2:Number):void{
            _fight = _arg1;
            _fightPro = _arg2;
        }
        public function setFight(_arg1:int):void{
            this._toFight = _arg1;
            this.text2.text = String(this._toFight);
        }
        public function setTips(_arg1:String):void{
            this.message.txt.text = _arg1;
        }
        public function setFightPro(_arg1:Number):void{
            this._toFightPro = _arg1;
            this.text1.text = (String(int((this._toFightPro * 100))) + "%");
        }
        private function frame(_arg1:Event):void{
            var _local4:*;
            _fightPro = (_fightPro + ((this._toFightPro - _fightPro) * 0.1));
            var _local2:* = (_fight / 100);
            var _local3:* = (_fight - (_local2 * 100));
            if (Math.abs((_fight - this._toFight)) <= 9){
                if (_fight < this._toFight){
                    _local4 = (_fight + 1);
                    _fight = _local4;
                };
                if (_fight == this._toFight){
                    _fightPro = this._toFightPro;
                    this.removeEventListener(Event.ENTER_FRAME, this.frame);
                };
            } else {
                _fight = (_fight + ((this._toFight - _fight) * 0.1));
            };
            this.text2.text = String(_fight);
            this.text1.text = (String(int((_fightPro * 100))) + "%");
        }
        function frame20(){
            stop();
        }

    }
}//package 
