//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import flash.events.*;
    import flash.display.*;
    import unit4399.events.*;
    import p2p2016.*;
    import SystemEye.*;

    public class R4399Main extends MovieClip {

        public static const cgRankID:uint = 1847;
        public static const szRankID:uint = 1845;
        public static const srRankID:uint = 1846;
        public static const zhRankID:uint = 1848;

        public static var INIT_LOGIN:String = "init_login";
        public static var ERROR_LOGIN:String = "error_login";
        public static var EIXT_LOGIN:String = "eixt_login";
        public static var _userChenA:Object = new Object();
        public static var vip:int = 0;
        public static var _4399_function_store_id:String = "3885799f65acec467d97b4923caebaae";
        public static var _4399_function_gameList_id:String = "944c23f5e64a80647f8d0f3435f5c7a8";
        public static var _4399_function_rankList_id:String = "69f52ab6eb1061853a761ee8c26324ae";
        public static var serviceHold:Object = null;
        private static var v:int = 3;
        private static var sxRole:String = "";
        private static var itxt:String = "";
        private static var ceng:cint = new cint();
        private static var dceng:cint = new cint();
        private static var dtarget:String = "";
        private static var dhp:cint = new cint();
        private static var dn:cint = new cint();
        private static var dfight:cint = new cint();
        private static var dfightTo:cint = new cint();
        private static var dfightTarget:String = "";
        private static var dfightN:cint = new cint();
        private static var dfightFight:Object = new cint();
        private static var dfightArray:Array;
        private static var cgScoreObject:Object = new Object();
        private static var szScoreObject:Object = new Object();
        private static var srScoreObject:Object = new Object();
        private static var userData:Object;
        public static var isLogin:Boolean = false;

        public function R4399Main(){
            _userChenA["zp934438567"] = "最古之王";
            _userChenA["qazplmrfvygv"] = "弑念";
            _userChenA["788803183"] = "乱入人生";
            _userChenA["shenyong123."] = "蔚蓝领域";
            _userChenA["605403861@qq.com"] = "凌空之影";
            _userChenA["jinxinbo1124"] = "雪夜殇月";
            _userChenA["897509552"] = "吃货无敌";
            _userChenA["810009994"] = "伊安倾雪";
            _userChenA["2417647212"] = "黑色遐想";
            _userChenA["as1150411765"] = "悠久之翼";
            _userChenA["zhi879718204"] = "恶魔之妹";
            _userChenA["71676859"] = "碧风领域";
            _userChenA["zxcvbnm511"] = "镇国公";
            _userChenA["189780792"] = "死战君侯";
            _userChenA["189780792"] = "死战君侯";
            _userChenA["149941619"] = "烧饼卷毛";
            _userChenA["15699840170"] = "暗夜使者";
            _userChenA["645639793"] = "琉璃";
            _userChenA["731259030"] = "上古天王";
            _userChenA["678290306"] = "剑神";
            _userChenA["a86220065"] = "无上神洛";
            _userChenA["jlpssg"] = "凌寒冷月";
            _userChenA["245292602"] = "最强之纸";
            _userChenA["yjh20010202"] = "羁绊之心";
            _userChenA["913217696"] = "神鬼奇谋";
            _userChenA["2503662457"] = "尼德霍格";
            _userChenA["1911984293"] = "空之境界";
            _userChenA["94747365"] = "飞天御剑";
            _userChenA["782892843"] = "执笔之心";
            _userChenA["flyno1"] = "格里高利";
            _userChenA["192837465hth"] = "耗子";
            _userChenA["779583520"] = "狂龙";
            _userChenA["572296202"] = "绝对领域";
            _userChenA["1640419559"] = "绅士练萌";
            _userChenA["13058306781"] = "贱贱";
            _userChenA["fhtian2001"] = "天殇";
            _userChenA["909924675"] = "柒殇";
            _userChenA["kky1888"] = "淡雪菜鸟";
            _userChenA["707764135"] = "天使领域";
            _userChenA["13654691768"] = "嗜血梦魇";
            _userChenA["9032769"] = "空虚";
            _userChenA["210263663"] = "黄瓜";
            _userChenA["812145822"] = "海之王者";
            _userChenA["817457957"] = "天下着雨";
            _userChenA["kky1777"] = "革命佐助";
            _userChenA["13378553702"] = "小小鸟";
            this.addEventListener(Event.ADDED_TO_STAGE, this.initEvent);
        }
        public static function loginAsk():void{
            if (Main.IS_PHONE){
                ComponentResourcesManage.$stage.$box.$api.addShow("提示", "本版本为手机版，不开放此功能");
                return;
            };
            serviceHold.getData(false);
        }
        public static function getUserData():Object{
            var _local4:*;
            userData = new Object();
            if (!userData.cg){
                userData.cg = new Object();
            };
            if (!userData.sz){
                userData.sz = new Object();
            };
            if (!userData.sr){
                userData.sr = new Object();
            };
            var _local1:int;
            var _local2:int;
            var _local3:int;
            for (_local4 in cgScoreObject) {
                userData.cg[_local4] = cgScoreObject[_local4].value;
                _local1 = (_local1 + cgScoreObject[_local4].value);
            };
            for (_local4 in szScoreObject) {
                userData.sz[_local4] = szScoreObject[_local4].value;
                _local2 = (_local2 + szScoreObject[_local4].value);
            };
            for (_local4 in srScoreObject) {
                userData.sr[_local4] = srScoreObject[_local4].value;
                _local3 = (_local3 + srScoreObject[_local4].value);
            };
            userData.v = v;
            userData.sxRole = sxRole;
            userData.cgScore = _local1;
            userData.szScore = _local2;
            userData.srScore = _local3;
            userData.szCeng = ceng.value;
            userData.szDCeng = dceng.value;
            userData.szTarget = dtarget;
            userData.szName = ((dtarget == "")) ? "无" : GameData.getSelectName(dtarget);
            userData.szHP = dhp.value;
            userData.szNanDu = dn.value;
            userData.szFight = dfight.value;
            userData.itxt = itxt;
            userData.cgFight = R4399Main.dfightFight.value;
            userData.cgTarget = dfightTarget;
            userData.cgName = ((dfightTarget == "")) ? "无" : GameData.getSelectName(dfightTarget);
            userData.cgNanDu = dfightN.value;
            userData.cgTo = R4399Main.dfightTo.value;
            userData.cgArr = dfightArray;
            if (((((cheakIsDebug(_local1, 30000, cgScoreObject)) || (cheakIsDebug(_local2, 30000, szScoreObject)))) || (cheakIsDebug(_local3, 30000, srScoreObject)))){
                ComponentResourcesManage.$stage.$box.$api.addShow("战力违规", "系统检测到你的战力似乎出现了异常数据。", true);
                return (null);
            };
            return (userData);
        }
        public static function cheakIsDebug(_arg1:int, _arg2:int, _arg3:Object):Boolean{
            var _local4:Object;
            var _local5:int;
            for (_local4 in cgScoreObject) {
                _local5++;
            };
            if (_local5 == 0){
                return (false);
            };
            if ((_arg1 / _local5) > _arg2){
                return (true);
            };
            return (false);
        }
        public static function setLayer(_arg1:int, _arg2:int, _arg3:String):void{
            if (sxRole == ""){
                sxRole = _arg3;
            };
            dceng.value = _arg1;
            dhp.value = _arg2;
            dn.value = GameData.$lv;
            dtarget = _arg3;
            dfight.value = GameScore.getNoneScore();
            if (_arg1 > ceng.value){
                ceng.value = _arg1;
            };
        }
        public static function setCGLayer(_arg1:int, _arg2:String):void{
            if (sxRole == ""){
                sxRole = _arg2;
            };
            R4399Main.dfightTo.value = _arg1;
            R4399Main.dfightN.value = GameData.$lv;
            R4399Main.dfightTarget = _arg2;
            R4399Main.dfightFight.value = GameScore.getNoneScore();
            dfightArray = GameData.$fightArray;
        }
        public static function setCGScore(_arg1:String, _arg2:int){
            if ((((_arg1 == "NoKown")) || ((GameData.$allFightArray.indexOf(_arg1) == -1)))){
                return;
            };
            if (!cgScoreObject[_arg1]){
                cgScoreObject[_arg1] = new cint(_arg2);
            } else {
                if (cgScoreObject[_arg1].value < _arg2){
                    cgScoreObject[_arg1].value = _arg2;
                };
            };
        }
        public static function setSZScore(_arg1:String, _arg2:int){
            if ((((_arg1 == "NoKown")) || ((GameData.$allFightArray.indexOf(_arg1) == -1)))){
                return;
            };
            if (!szScoreObject[_arg1]){
                szScoreObject[_arg1] = new cint(_arg2);
            } else {
                if (szScoreObject[_arg1].value < _arg2){
                    szScoreObject[_arg1].value = _arg2;
                };
            };
        }
        public static function setSRScore(_arg1:String, _arg2:int){
            if ((((_arg1 == "NoKown")) || ((GameData.$allFightArray.indexOf(_arg1) == -1)))){
                return;
            };
            if (!srScoreObject[_arg1]){
                srScoreObject[_arg1] = new cint(_arg2);
            } else {
                if (srScoreObject[_arg1].value < _arg2){
                    srScoreObject[_arg1].value = _arg2;
                };
            };
        }
        public static function getCGScore(_arg1:String):int{
            if (cgScoreObject[_arg1]){
                return (cgScoreObject[_arg1].value);
            };
            return (0);
        }
        public static function getSZScore(_arg1:String):int{
            if (szScoreObject[_arg1]){
                return (szScoreObject[_arg1].value);
            };
            return (0);
        }
        public static function getSRScore(_arg1:String):int{
            if (srScoreObject[_arg1]){
                return (srScoreObject[_arg1].value);
            };
            return (0);
        }
        public static function setIText(_arg1:String):void{
            itxt = _arg1;
        }
        public static function saveData():void{
            var _local1:* = null;
            if (((serviceHold) && (R4399Main.isLogin))){
                _local1 = P2PData.compress(JSON.stringify(R4399Main.getUserData()));
                serviceHold.saveData("幻想纹章-0", _local1, false);
            };
        }
        public static function moreGame(){
            if (serviceHold){
                serviceHold.showGameList();
            };
        }
        public static function rankByOne(_arg1:uint):void{
            if (((serviceHold) && (R4399Main.isLogin))){
                serviceHold.getRankListByOwn(_arg1, 0, 3);
            };
        }
        public static function rankByPage(_arg1:uint, _arg2:int):void{
            if (((serviceHold) && (R4399Main.isLogin))){
                serviceHold.getRankListsData(_arg1, 7, _arg2);
            };
        }
        public static function rankByName(_arg1:uint, _arg2:String):void{
            if (((serviceHold) && (R4399Main.isLogin))){
                serviceHold.getOneRankInfo(_arg1, _arg2);
            };
        }
        public static function rankSubmit(_arg1:Object):void{
            var _local2:* = undefined;
            var _local3:* = null;
            var _local4:* = null;
            var _local5:* = 0;
            var _local6:* = null;
            var _local7:* = null;
            var _local8:* = 0;
            var _local9:* = 0;
            var _local10:* = 0;
            var _local11:* = 0;
            var _local12:* = null;
            var _local13:* = null;
            if (!serviceHold.isLog){
                return;
            };
            _arg1.itxt = ((itxt)!=="") ? itxt : "无";
            var _local14:* = new Object();
            var _local15:* = new Object();
            var _local16:* = new Object();
            var _local17:* = new Object();
            _local14.itxt = ((itxt)!=="") ? itxt : "无";
            _local15.itxt = ((itxt)!=="") ? itxt : "无";
            _local16.itxt = ((itxt)!=="") ? itxt : "无";
            _local17.itxt = ((itxt)!=="") ? itxt : "无";
            if ((((serviceHold.isLog.name == "15119965102")) || ((serviceHold.isLog.name == "817457957")))){
                R4399Main.setSZScore("Ban", 10000);
            };
            var _local18:* = "";
            var _local19:* = "";
            var _local20:* = 0;
            for (_local2 in cgScoreObject) {
                _local18 = (_local18 + (_local2 + ","));
                _local9 = int((cgScoreObject[_local2].value / 100));
                _local19 = (_local19 + (String(((_local9 >= 100)) ? "m" : _local9) + ","));
                _local20++;
            };
            _local14.rolez = _local19;
            _local14.role = _local18;
            _local14.rnum = _local20;
            _local3 = "";
            _local4 = "";
            _local5 = 0;
            for (_local2 in szScoreObject) {
                _local3 = (_local3 + (_local2 + ","));
                _local10 = int((szScoreObject[_local2].value / 100));
                _local4 = (_local4 + (String(((_local10 >= 100)) ? "m" : _local10) + ","));
                _local5++;
            };
            _local15.rolez = _local4;
            _local15.role = _local3;
            _local15.rnum = _local5;
            _local6 = "";
            _local7 = "";
            _local8 = 0;
            for (_local2 in srScoreObject) {
                _local6 = (_local6 + (_local2 + ","));
                _local11 = int((srScoreObject[_local2].value / 100));
                _local7 = (_local7 + (String(((_local11 >= 100)) ? "m" : _local11) + ","));
                _local8++;
            };
            _local16.rolez = _local7;
            _local16.role = _local6;
            _local16.rnum = _local8;
            _local17.role = "no";
            _local17.rnum = -1;
            if (serviceHold.isLog.name == "15119965102"){
                _local12 = GameData.getSelectName(R4399Main.sxRole);
                if ((((_local12 == "???")) || ((_local12 == "")))){
                    _local12 = "破损的选择";
                };
                _local12 = "不忘的初心";
                _local14.ch = "左眼游戏";
                _local14.rh = _local12;
                _local15.ch = "左眼游戏";
                _local15.rh = _local12;
                _local16.ch = "左眼游戏";
                _local16.rh = _local12;
                _local17.ch = "左眼游戏";
                _local17.rh = _local12;
            } else {
                if (_userChenA[serviceHold.isLog.name]){
                    _local12 = GameData.getSelectName(R4399Main.sxRole);
                    if ((((_local12 == "???")) || ((_local12 == "")))){
                        _local12 = "破损的选择";
                    };
                    _local12 = "未决的选择";
                    if (serviceHold.isLog.name == "2574934342wy@@@"){
                    } else {
                        if (serviceHold.isLog.name == "13378553702"){
                            _local12 = "辣鸡的合金剑心";
                        };
                    };
                    _local14.ch = _userChenA[serviceHold.isLog.name];
                    _local14.rh = _local12;
                    _local15.ch = _userChenA[serviceHold.isLog.name];
                    _local15.rh = _local12;
                    _local16.ch = _userChenA[serviceHold.isLog.name];
                    _local16.rh = _local12;
                    _local17.ch = _userChenA[serviceHold.isLog.name];
                    _local17.rh = _local12;
                } else {
                    if (R4399Main.ceng.value >= 41){
                        _local14.ch = "死战";
                        _local14.rh = "最终的荣誉";
                        _local15.ch = "死战";
                        _local15.rh = "最终的荣誉";
                        _local16.ch = "死战";
                        _local16.rh = "最终的荣誉";
                        _local17.ch = "死战";
                        _local17.rh = "最终的荣誉";
                    };
                };
            };
            if (serviceHold.isLog.name == "2574934342wy@@@"){
                return;
            };
            if (((serviceHold) && (R4399Main.isLogin))){
                _local13 = R4399Main.getUserData();
                if (_local13){
                    serviceHold.submitScoreToRankLists(0, [{
                        rId:zhRankID,
                        score:(_local13.cgScore + _local13.szScore),
                        extra:P2PData.compress(JSON.stringify(_local17))
                    }, {
                        rId:cgRankID,
                        score:_local13.cgScore,
                        extra:P2PData.compress(JSON.stringify(_local14))
                    }, {
                        rId:szRankID,
                        score:_local13.szScore,
                        extra:P2PData.compress(JSON.stringify(_local15))
                    }, {
                        rId:srRankID,
                        score:_local13.srScore,
                        extra:P2PData.compress(JSON.stringify(_local16))
                    }]);
                };
            };
        }

        public function setHold(_arg1):void{
            serviceHold = _arg1;
        }
        public function initEvent(_arg1:Event):void{
            stage.addEventListener(SaveEvent.SAVE_GET, this.saveProcess);
            stage.addEventListener(SaveEvent.SAVE_SET, this.saveProcess);
            stage.addEventListener(SaveEvent.SAVE_LIST, this.saveProcess);
            stage.addEventListener("saveBackIndex", this.saveProcess);
            stage.addEventListener("netSaveError", this.netSaveErrorHandler, false, 0, true);
            stage.addEventListener("netGetError", this.netGetErrorHandler, false, 0, true);
            stage.addEventListener("multipleError", this.multipleErrorHandler, false, 0, true);
            stage.addEventListener("StoreStateEvent", this.getStoreStateHandler, false, 0, true);
            stage.addEventListener("getDataExcep", this.getDataExcepHandler, false, 0, true);
            stage.addEventListener(RankListEvent.RANKLIST_ERROR, this.onRankListErrorHandler);
            stage.addEventListener(RankListEvent.RANKLIST_SUCCESS, this.onRankListSuccessHandler);
            stage.addEventListener("userLoginOut", this.onUserLogOutHandler, false, 0, true);
        }
        private function onRankListErrorHandler(_arg1:RankListEvent):void{
            var _local2:* = _arg1.data;
            var _local3:* = (((((("apiFlag:" + _local2.apiName) + "   errorCode:") + _local2.code) + "   message:") + _local2.message) + "\n");
            ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", _local3);
        }
        private function onUserLogOutHandler(_arg1:Event):void{
            itxt = "";
            sxRole = "";
            userData = null;
            ceng.value = 0;
            dceng.value = 0;
            dtarget = "";
            dhp.value = 0;
            dn.value = 0;
            dfight.value = 0;
            dfightTo.value = 0;
            dfightTarget = "";
            dfightN.value = 0;
            dfightFight.value = 0;
            dfightArray = null;
            cgScoreObject = new Object();
            szScoreObject = new Object();
            srScoreObject = new Object();
            R4399Main.isLogin = false;
            ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "你已成功退出", true);
            this.dispatchEvent(new Event(R4399Main.EIXT_LOGIN));
        }
        private function onRankListSuccessHandler(_arg1:RankListEvent):void{
            var _local2:* = _arg1.data;
            var _local3:* = _local2.data;
            switch (_local2.apiName){
                case "1":
                    ComponentResourcesManage.$stage.showUserRank(_local2);
                case "2":
                    ComponentResourcesManage.$stage.showUserRank(_local2);
                case "4":
                    ComponentResourcesManage.$stage.showUserRank(_local2);
                    break;
                case "3":
                    this.decodeSumitScoreInfo(_local3);
                    break;
                case "5":
                    this.decodeUserData(_local3);
                    break;
            };
        }
        private function decodeUserData(_arg1:Object):void{
            if (_arg1 == null){
                return;
            };
            var _local2:* = (((((((("存档索引：" + _arg1.index) + "\n标题:") + _arg1.title) + "\n数据：") + _arg1.data) + "\n存档时间：") + _arg1.datetime) + "\n");
        }
        private function decodeSumitScoreInfo(_arg1:Array):void{
            var _local2:*;
            var _local3:Object;
            var _local4:String;
            if ((((_arg1 == null)) || ((_arg1.length == 0)))){
                return;
            };
            for (_local2 in _arg1) {
                _local3 = _arg1[_local2];
                _local4 = (((((("第" + (_local2 + 1)) + "条数据。排行榜ID：") + _local3.rId) + "，信息码值：") + _local3.code) + "\n");
                if (_local3.code == "10000"){
                    _local4 = (_local4 + (((((((("当前排名:" + _local3.curRank) + ",当前分数：") + _local3.curScore) + ",上一局排名：") + _local3.lastRank) + ",上一局分数：") + _local3.lastScore) + "\n"));
                } else {
                    _local4 = (_local4 + (("该排行榜提交的分数出问题了。信息：" + _local3.message) + "\n"));
                };
            };
        }
        private function decodeRankListInfo(_arg1:Array):void{
            var _local2:*;
            var _local3:Object;
            var _local4:String;
            if ((((_arg1 == null)) || ((_arg1.length == 0)))){
                return;
            };
            for (_local2 in _arg1) {
                _local3 = _arg1[_local2];
                _local4 = (((((((((((((((("第" + (_local2 + 1)) + "条数据。存档索引：") + _local3.index) + ",用户id:") + _local3.uId) + ",昵称：") + _local3.userName) + ",分数：") + _local3.score) + ",排名：") + _local3.rank) + ",来自：") + _local3.area) + ",扩展信息：") + _local3.extra) + "\n");
            };
        }
        private function saveProcess(_arg1:SaveEvent):void{
            var obData:* = null;
            var logInfo:* = null;
            var tmpObj:* = null;
            var data:* = null;
            var i:* = undefined;
            var uname:* = null;
            var arr:* = null;
            var obj:* = null;
            var tmpStr:* = null;
            var e:* = _arg1;
            switch (e.type){
                case SaveEvent.SAVE_GET:
                    obData = null;
                    try {
                        obData = JSON.parse(P2PData.extract(e.data.data));
                    } catch(e:Error) {
                        obData = null;
                    };
                    if (((obData) && ((int(obData.v) >= v)))){
                        for (i in obData.cg) {
                            R4399Main.setCGScore(i, obData.cg[i]);
                        };
                        for (i in obData.sz) {
                            R4399Main.setSZScore(i, obData.sz[i]);
                        };
                        for (i in obData.sr) {
                            R4399Main.setSRScore(i, obData.sr[i]);
                        };
                        dhp.value = int(obData.szHP);
                        dn.value = int(obData.szNanDu);
                        ceng.value = int(obData.szCeng);
                        dceng.value = int(obData.szDCeng);
                        dtarget = obData.szTarget;
                        itxt = (obData.itxt) ? obData.itxt : "";
                        dfight.value = int(obData.szFight);
                        dfightFight.value = obData.cgFight;
                        dfightTarget = obData.cgTarget;
                        dfightN.value = obData.cgNanDu;
                        dfightTo.value = obData.cgTo;
                        sxRole = (obData.sxRole) ? obData.sxRole : "";
                        try {
                            dfightArray = (obData.cgArr) ? (JSON.parse(obData.cgArr) as Array) : null;
                        } catch(e:Error) {
                            dfightArray = null;
                        };
                    };
                    if (!isLogin){
                        isLogin = true;
                        this.dispatchEvent(new Event(R4399Main.INIT_LOGIN));
                    };
                    logInfo = serviceHold.isLog;
                    if (logInfo){
                        uname = serviceHold.isLog.name;
                        R4399Main.rankByName(R4399Main.cgRankID, uname);
                        arr = ["913217696", "964169387", "15119965102", "907319589", "748022205", "1024398201", "flyno1", "495418323", "jinxinbo1124", "5536894", "huangzufeiai", "110131076"];
                        if (arr.indexOf(uname) != -1){
                            vip = 1;
                        };
                    };
                    ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "读档成功", true);
                    break;
                case SaveEvent.SAVE_SET:
                    if ((e.ret as Boolean) == true){
                    } else {
                        ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "保存失败");
                    };
                    break;
                case "saveBackIndex":
                    tmpObj = (e.ret as Object);
                    if ((((tmpObj == null)) || ((int(tmpObj.idx) == -1)))){
                        break;
                    };
                    break;
                case SaveEvent.SAVE_LIST:
                    data = (e.ret as Array);
                    if (data == null){
                        break;
                    };
                    for (i in data) {
                        obj = data[i];
                        if (obj == null){
                        } else {
                            tmpStr = ((((((("存档的位置:" + obj.index) + "存档时间:") + obj.datetime) + "存档标题:") + obj.title) + "存档状态:") + obj.status);
                        };
                    };
                    break;
            };
        }
        private function netSaveErrorHandler(_arg1:Event):void{
        }
        private function netGetErrorHandler(_arg1:DataEvent):void{
            var _local2:* = (("网络取" + _arg1.data) + "档失败了！");
            this.dispatchEvent(new Event(R4399Main.ERROR_LOGIN));
        }
        private function multipleErrorHandler(_arg1:Event):void{
        }
        private function getStoreStateHandler(_arg1:DataEvent):void{
        }
        private function getDataExcepHandler(_arg1:SaveEvent):void{
            var _local2:* = (_arg1.ret as Object);
            var _local3:* = ((("存档的位置:" + _local2.index) + "存档状态:") + _local2.status);
        }
        public function get name4399():String{
            if (((serviceHold) && (serviceHold.isLog))){
                return (serviceHold.isLog.name);
            };
            return (null);
        }

    }
}//package 
