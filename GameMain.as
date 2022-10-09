//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import flash.text.*;

    public class GameMain extends MovieClip {

        public var a1:SimpleButton;
        public var a2:SimpleButton;
        public var a3:SimpleButton;
        public var a4:SimpleButton;
        public var a5:SimpleButton;
        public var index:MovieClip;
        public var mc:MovieClip;
        public var userName:TextField;
        private var _tox:int = 0;
        private var _gox:int = -100;
        private var _obdata:Object;

        public function GameMain(){
            var _local1:* = null;
            this.a1.addEventListener(MouseEvent.CLICK, this.click);
            this.a2.addEventListener(MouseEvent.CLICK, this.click);
            this.a3.addEventListener(MouseEvent.CLICK, this.click);
            this.a4.addEventListener(MouseEvent.CLICK, this.click);
            this.a5.addEventListener(MouseEvent.CLICK, this.click);
            var _local2:* = (this.mc as MovieClip);
            var _local3:* = 0;
            while (_local3 < _local2.numChildren) {
                _local1 = (_local2.getChildAt(_local3) as SimpleButton);
                if (_local1){
                    _local1.addEventListener(MouseEvent.CLICK, this.mcClick);
                };
                _local3++;
            };
            this.mc.btntxt.mouseEnabled = false;
            this.mc.btntxt.text = "编辑";
            this.addEventListener(Event.ENTER_FRAME, this.frame);
        }
        private function frame(_arg1:Event):void{
            this.mc.x = (this.mc.x + (((-(this._tox) * 700) - this.mc.x) * 0.5));
            this.index.x = (this.index.x + ((this._gox - this.index.x) * 0.5));
        }
        private function click(_arg1:MouseEvent):void{
            var _local2:* = (_arg1.target.name as String);
            this._tox = (int(_local2.charAt(1)) - 1);
            this._gox = ((_arg1.target.x + (_arg1.target.width / 2)) - (this.index.width / 2));
        }
        private function mcClick(_arg1:MouseEvent):void{
            switch (_arg1.target.name){
                case "bj":
                    break;
                case "cgms":
                case "sz":
                case "srcg":
                case "drtz":
                case "srtz":
                case "sztz":
                case "dnms":
                    switch (_arg1.target.name){
                        case "dnms":
                            this.mc.ts.text = "【电脑模式】自主选择一个角色进行对战。";
                            break;
                        case "sztz":
                        case "sz":
                            this.mc.ts.text = "【死战模式】以1条生命去挑战敌人，一局定胜负。当胜利一局后，会恢复一定的HP。";
                            break;
                        case "drtz":
                        case "cgms":
                            this.mc.ts.text = "【闯关模式】挑战敌人，以两局定胜负，一共为11局。";
                            break;
                        case "srtz":
                        case "srcg":
                            this.mc.ts.text = "【双人闯关】可以与你的伙伴们一起闯关，对抗敌人，一共6局。";
                            break;
                    };
                    if ((((((((_arg1.target.name == "sz")) || ((_arg1.target.name == "sztz")))) || ((_arg1.target.name == "cgms")))) || ((_arg1.target.name == "drtz")))){
                        if (_arg1.target.name.indexOf("sz") != -1){
                            this.mc.selecttxt.gotoAndStop(1);
                        } else {
                            this.mc.selecttxt.gotoAndStop(2);
                        };
                        this._tox = 8;
                    } else {
                        this._tox = 5;
                    };
                    break;
                case "gl":
                    this._tox = 6;
                    break;
                case "gy":
                    this._tox = 7;
                    break;
                case "open1":
                case "close1":
                    this.mc.select1.x = (_arg1.target.x + (_arg1.target.width / 2));
                    break;
                case "open2":
                case "close2":
                    this.mc.select2.x = (_arg1.target.x + (_arg1.target.width / 2));
                    break;
                case "hfmr":
                    this.mc.select1.x = (this.mc.open1.x + (this.mc.open1.width / 2));
                    this.mc.select2.x = (this.mc.open2.x + (this.mc.open1.width / 2));
                    break;
            };
            this.dispatchEvent(new GameSelectEvent(GameSelectEvent.GAME_EVENT, _arg1.target.name));
        }
        public function setGXName(_arg1:String):void{
            this.mc.btntxt.text = _arg1;
        }
        public function setTimeSelect(_arg1:Boolean):void{
            this.mc.timeSelect.x = (_arg1) ? this.mc.s999.x : this.mc.s99.x;
        }
        public function setGG(_arg1:String):void{
            this.mc.gg.text = _arg1;
        }
        public function go(_arg1:int):void{
            this._tox = _arg1;
        }
        public function soundV(_arg1:int, _arg2:int):void{
            if (_arg1 == 1){
                this.mc.select1.x = (this.mc.open1.x + (this.mc.open1.width / 2));
            } else {
                this.mc.select1.x = (this.mc.close1.x + (this.mc.open1.width / 2));
            };
            if (_arg2 == 1){
                this.mc.select2.x = (this.mc.open2.x + (this.mc.open1.width / 2));
            } else {
                this.mc.select2.x = (this.mc.close2.x + (this.mc.open1.width / 2));
            };
        }
        public function isOKBoolean():Boolean{
            if (this.mc.btntxt.text == "编辑"){
                this.mc.itxt.type = TextFieldType.INPUT;
                this.mc.itxt.maxChars = 20;
                this.mc.itxt.border = true;
                this.mc.btntxt.text = "确定";
                this.mc.itxt.setSelection(0, this.mc.itxt.text.length);
                return (false);
            };
            this.mc.itxt.type = TextFieldType.DYNAMIC;
            this.mc.btntxt.text = "编辑";
            this.mc.itxt.border = false;
            return (true);
        }
        public function setUserName(_arg1:String):void{
            this.userName.text = _arg1;
        }
        public function getIText():String{
            return (this.mc.itxt.text);
        }
        public function setIText(_arg1:String):void{
            this.mc.itxt.text = _arg1;
        }
        public function setData(_arg1:Object):void{
            this._obdata = _arg1;
            if (_arg1 == null){
                this.mc.cgtxt.text = "闯关模式";
                this.mc.cgstr.text = "初战者";
                this.mc.sztxt.text = "死战模式";
                this.mc.szstr.text = "原地踏步";
                this.mc.srtxt.text = "双人模式";
                this.mc.srstr.text = "初接触";
            };
            this.mc.cgstr.text = (("情况：战力（" + _arg1.cgScore) + "）");
            this.mc.szstr.text = (((("情况：战力（" + _arg1.szScore) + "）\n已挑战至【") + _arg1.szCeng) + "】层");
            this.mc.srstr.text = (("情况：战力（" + _arg1.srScore) + "）");
            this.mc.zhtxt.text = ("综合战力：" + String((_arg1.cgScore + _arg1.szScore)));
            this.mc.itxt.text = ((String(_arg1.itxt))!=="") ? String(_arg1.itxt) : "（个性签名，属于你的位置）";
        }
        public function updateJXFight(_arg1:String):void{
            var _local2:* = 0;
            if (_arg1 == "SZ"){
                if (this._obdata.szName != "无"){
                    _local2 = int((this._obdata.szHP * 1.05));
                    _local2 = ((_local2 > 2500)) ? 2500 : _local2;
                    this.mc.szmessage.text = (((((("使用角色【" + this._obdata.szName) + " 】\n当前【") + this._obdata.szDCeng) + "】层（") + _local2) + "HP）");
                } else {
                    this.mc.szmessage.text = "新角色开始战斗吧！";
                };
            } else {
                if (this._obdata.cgName != "无"){
                    this.mc.szmessage.text = (((("使用角色【" + this._obdata.cgName) + " 】\n当前【") + this._obdata.cgTo) + "】关");
                } else {
                    this.mc.szmessage.text = "新角色开始战斗吧！";
                };
            };
        }

    }
}//package 
