//Created by Action Script Viewer - http://www.buraks.com/asv
package {
    import SystemComponent.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.utils.*;
    import flash.media.*;
    import flash.display.*;
    import SystemComponent.Word.*;
    import flash.net.*;
    import open4399Tools.*;
    import flash.text.*;
    import open4399Tools.events.*;
    import p2p2016.*;
    import SystemEye.*;
    import eye.Draw.*;
    import SystemComponent.Word.Role.*;
    import SystemComponent.Word.Freak.*;
    import person.animation.logoShow.apps.*;
    import SystemComponent.Word.Skill.*;
    import person.p2p.*;
    import person.text.*;
    import gif2016.*;
    import person.restrict.*;
    import org.superkaka.kakalib.debug.*;
    import SystemComponent.HD.DanMu.*;
    import flash.ui.*;

    public class Main extends R4399Main {

        public static const IS_PREVIEW:Boolean = false;
        public static const IS_ONLINE_ZIP:Boolean = true;
        public static const IS_LAN:Boolean = false;
        public static const IS_PHONE:Boolean = false;

        public static var IS_TEST:Boolean = false;
        public static var contentWidth:int = 700;
        public static var contentHeight:int = 500;
        public static var contentScale:Number = 0;
        public static var keyMain:KeyMain;
        private static var _test:Boolean = false;

        public var loadingmc:MovieClip;
        public var serviceHold:Object = null;
        public var $box:SystemDialogBox;
        public var $roleBox:SystemRoleDialogBox;
        public var _paues_layer:SystemPauseLayer;
        private var _startSwf:Loader;
        private var _startSpr:Sprite;
        private var _startFrame:int;
        public var $lvexp:LvEXP;
        private var $stopShape:Sprite;
        private var $keyCode:String = "";
        private var loginMc:GameLogin;
        private var testMain:Object;
        private var _movie:Video;
        private var _movieSpr:Sprite;
        private var _movieTips:TextField;
        public var rank:RankLayer;
        private var _mode:String = "none";
        private var _rankMode:String = "none";
        private var _rtxt:String = "";
        private var _ztxt:String = "";
        private var _rank_ob:Object;
        private var Pz:int = 0;
        private var _main:GameMain;

        public function Main():void{
            this.$stopShape = new Sprite();
            this.addEventListener(Event.ADDED_TO_STAGE, this.loadingload);
        }
        public static function NDString():String{
            switch (GameData.$lv){
                case 95:
                    return ("简单");
                case 80:
                    return ("普通");
                case 65:
                    return ("困难");
                case 50:
                    return ("王者");
                case 35:
                    return ("英雄");
            };
            return ("无效等级");
        }

        public function api4399showGameList(){
            var _loc_2:* = undefined;
            try {
                _loc_2 = ComponentResourcesManage.$stage.parent.parent;
                var _loc2 = _loc_2;
                _loc2["Show"]();
            } catch(e:Error) {
                ComponentResourcesManage.$stage.$box.$api.addShow("系统", "暂无更多游戏列表", true);
            };
        }
        public function api4399showRankList(){
            var _loc_2:* = undefined;
            try {
                _loc_2 = ComponentResourcesManage.$stage.parent.parent;
                var _loc2 = _loc_2;
                _loc2["ShowRank"]();
            } catch(e:Error) {
                ComponentResourcesManage.$stage.$box.$api.addShow("系统", "暂无更多游戏列表", true);
            };
        }
        private function setSystemRole():void{
            stage.showDefaultContextMenu = false;
            Ace.init();
            Mingren.init();
            GangJi.init();
            JianXin.init();
            NingCi.init();
            XianMing.init();
            JianBa.init();
            XiaoDi.init();
            WuZeiNiang.init();
            DaBai.init();
            XuanWoMingRen.init();
            CaoNiMa.init();
            GuaiYiLong.init();
            GeDouJia.init();
            JinLong.init();
            LaoDie.init();
            Lang.init();
            LuFei.init();
            Wo.init();
            NaZi.init();
            YiHu.init();
            HuoYuanSu.init();
            GuiJianShi.init();
            NvGuiJian.init();
            NanMoFa.init();
            TongRen.init();
            PaoJie.init();
            ZuoZhu.init();
            LianDao.init();
            Ying.init();
            HeiMao.init();
            Saber.init();
            YangCongTou.init();
            HongFa.init();
            XiaNa.init();
            ShuangDaoYiHu.init();
            DongShiLang.init();
            ShuiShu.init();
            GeLei.init();
            Ban.init();
            JinFa.init();
            JinMing.init();
            JianShi.init();
            HongJuJian.init();
            WuJiTa.init();
            JinQiang.init();
            MoHuaJianXin.init();
            BeiJiTe.init();
            QuanYeCha.init();
            YingZuo.init();
            CaiHongMie.init();
            ZhenTongRen.init();
            LvMao.init();
            NiuTou.init();
            Freak_WuGong.init();
            Freak_ShuiSheng.init();
            Freak_GeBuLin.init();
            Freak_LaoGeBuLin.init();
            Freak_BingSprite.init();
            Freak_GuangSprite.init();
            Freak_YanSprite.init();
            Freak_WangSprite.init();
        }
        private function setSystemSkill():void{
            new SkillJianXin();
            new SkillGangJi();
            new SkillJianBa();
            new SkillNingCi();
            new SkillMingRen();
            new SkillXiaoDi();
            new SkillXiaoWu();
            new SkillXuanWoMingRen();
            new SkillAce();
            new SkillDaBai();
            new SkillGuaiYiLong();
            new SkillGeDouJia();
            new SkillJinLong();
            new SkillLaoDie();
            new SkillLuFei();
            new SkillWo();
            new SkillNaZi();
            new SkillYiHu();
            new SkillHuoYuanSu();
            new SkillGuiJianShi();
            new SkillNvGuiJian();
            new SkillNanMoFa();
            new SkillTongRen();
            new SkillPaoJie();
            new SkillZuoZhu();
            new SkillShuangDao();
            new SkillYing();
            new SkillHeiMao();
            new SkillSaber();
            new SkillSanBen();
            new SkillHongFa();
            new SkillXiaNa();
            new SkillDongShiLang();
            new SkillShuiShu();
            new SkillBan();
            new SkillJianShi();
            new SkillWuJiTa();
            new SkillYingZuo();
        }
        public function getHredImg(_arg1:String):BitmapData{
            return (DataStorage.readImg(_arg1));
        }
        private function loadingload(_arg1:Event):void{
            var _loc2:* = null;
            var _loc3:* = (stage.stageWidth / stage.fullScreenWidth);
            if (IS_PHONE){
                stage.scaleMode = StageScaleMode.NO_BORDER;
                stage.align = StageAlign.TOP_LEFT;
                contentWidth = (stage.fullScreenWidth * _loc3);
                contentHeight = (stage.fullScreenHeight * _loc3);
            };
            contentScale = (contentHeight / 500);
            if (IS_PHONE){
                _loc2 = new KeyMain();
                this.addChild(_loc2);
                keyMain = _loc2;
            };
            stage.quality = StageQuality.LOW;
            SystemLoading.$codeBoolean = SwfRestrict.$codeBoolean;
            SystemLoading.stage = this;
            SystemLoading.addTask("File/indexFile/img/box/loading.png", "photo", "system_loading", true);
            SystemLoading.addTask("File/indexFile/img/box/loadingt.png", "photo", "system_loadingt", true);
            SystemLoading.addTask("File/indexFile/img/box/loadingt.png", "photo", "system_loadingt", true);
            SystemLoading.addTask("File/indexFile/img/default/start.png", "photo", "system_start", true);
            SystemLoading.addTask("File/indexFile/sound/system/open1.6.mp3", "sound", "systemOPEN1.6", true);
            SystemLoading.startForOverOpen = this.loadPlayV;
        }
        private function loadPlayV():void{
            SystemMucisPlay.systemMusic = DataStorage.readSound("systemOPEN1.6");
            this._startSwf = new Loader();
            this._startSwf.load(new URLRequest("File/indexFile/movie/start.swf"));
            this._startSwf.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
            this._startSwf.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, this.onLoading);
        }
        private function onLoading(_arg1:ProgressEvent):void{
            this.loadingmc.gotoAndStop(int(((_arg1.bytesLoaded / _arg1.bytesTotal) * 100)));
        }
        private function onComplete(_arg1:Event):void{
            this.removeChild(this.loadingmc);
            this.com();
            this._startSpr = new Sprite();
            this.addChild(this._startSpr);
            this._startSpr.graphics.beginFill(0);
            this._startSpr.graphics.drawRect(0, 0, stage.stageWidth, stage.stageHeight);
            var _loc2:* = new Timer(500, 1);
            _loc2.addEventListener(TimerEvent.TIMER_COMPLETE, this.onPlayTimeComplete);
            _loc2.start();
            (this._startSwf.content as MovieClip).stop();
            var _loc3:* = new ContextMenu();
            var _loc4:* = new ContextMenuItem("平滑视觉(提高视觉美感)");
            _loc4.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, this.onSelectHigh);
            var _loc5:* = new ContextMenuItem("禁用平滑(提高流畅度)");
            _loc5.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, this.onSelectLow);
            _loc3.customItems.push(_loc4, _loc5);
            this.contextMenu = _loc3;
            if ((this._startSwf.content as MovieClip)){
                (this._startSwf.content as MovieClip).soundTransform = new SoundTransform(0);
            };
        }
        private function onSelectHigh(_arg1:ContextMenuEvent):void{
            if (ComponentResourcesManage.$stage.$box){
                ComponentResourcesManage.$stage.$box.$api.addShow("质量设置", "HIGH配置", true);
            };
            stage.quality = StageQuality.HIGH;
        }
        private function onSelectLow(_arg1:ContextMenuEvent):void{
            stage.quality = StageQuality.LOW;
            if (ComponentResourcesManage.$stage.$box){
                ComponentResourcesManage.$stage.$box.$api.addShow("质量设置", "LOW配置", true);
            };
        }
        private function onPlayTimeComplete(_arg1:TimerEvent):void{
            this._startSpr.parent.removeChild(this._startSpr);
            this.addChild(this._startSwf);
            this._startFrame = (this._startSwf.content as MovieClip).framesLoaded;
            this._startSwf.addEventListener(Event.ENTER_FRAME, this.onPlayVFrame);
            (this._startSwf.content as MovieClip).play();
        }
        private function onPlayVFrame(_arg1:Event):void{
            if ((this._startSwf.content as MovieClip).currentFrame == this._startFrame){
                (this._startSwf.content as MovieClip).stop();
                if (this._startSwf.alpha > 0){
                    this._startSwf.alpha = (this._startSwf.alpha - 0.01);
                } else {
                    if (this._movieTips){
                        this._movieTips.parent.removeChild(this._movieTips);
                        this._movieTips = null;
                    };
                    this._startSwf.unloadAndStop(true);
                    this._startSwf.parent.removeChild(this._startSwf);
                    this._startSwf.removeEventListener(Event.ENTER_FRAME, this.onPlayVFrame);
                    this._startSwf = null;
                    SystemLoading.setVisible(true);
                };
            };
        }
        public function com():void{
            var _loc1:* = null;
            stage.frameRate = 32;
            if (!SwfRestrict.asWeb(stage.loaderInfo.url, true)){
                this.setSystemRole();
                this.setSystemSkill();
                Fps.setup(this);
                ComponentResourcesManage.$stage = this;
                SystemBackground.stage = this;
                SystemBackground.bitmapData = DataStorage.readImg("system_start");
                SystemLoading.stage = this;
                SystemLoading.toInt(100);
                SystemLoading.setVisible(false);
                SystemLoading.addTask("File/indexFile/data/update.xml", "text", "System_UPDATE", true);
                SystemLoading.addTask("File/indexFile/data/select.xml", "text", "System_SELECT", true);
                SystemLoading.addTask("File/indexFile/img/default/logo.png", "photo", "Logo", true);
                SystemLoading.addTask("File/indexFile/img/default/Logo2.png", "photo", "Logo2", true);
                SystemLoading.addTask("File/indexFile/img/default/game.png", "photo", "systemBJ", true);
                SystemLoading.addTask("File/indexFile/sound/system/open.mp3", "sound", "systemOPEN", true);
                SystemLoading.addTask("File/indexFile/data/ch.xml", "text", "systemLANG", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/1.png", "photo", "buttonUI1", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/1.xml", "text", "buttonUI1", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/log.png", "photo", "buttonUI3", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/log.xml", "text", "buttonUI3", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/rank.png", "photo", "buttonUI4", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/rank.xml", "text", "buttonUI4", true);
                SystemLoading.addTask("File/indexFile/img/text/gxxx.png", "photo", "textGXXX", true);
                SystemLoading.addTask("File/indexFile/img/text/gxxx.xml", "text", "textGXXX", true);
                SystemLoading.addTask("File/indexFile/img/tx/BiSha.png", "photo", "GameAtt", true);
                SystemLoading.addTask("File/indexFile/img/tx/BiSha.xml", "text", "GameAtt", true);
                SystemLoading.addTask("File/indexFile/img/ui/select/Select.png", "photo", "Select_PNG", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/2.png", "photo", "buttonUI2", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/2.xml", "text", "buttonUI2", true);
                SystemLoading.addTask("File/indexFile/img/text/menu.png", "photo", "Menu", true);
                SystemLoading.addTask("File/indexFile/img/text/menu.xml", "text", "Menu", true);
                SystemLoading.addTask("File/indexFile/img/box/box1.png", "photo", "box1", true);
                SystemLoading.addTask("File/indexFile/img/box/box2.png", "photo", "box2", true);
                SystemLoading.addTask("File/indexFile/img/box/update.png", "photo", "box3", true);
                SystemLoading.addTask("File/indexFile/sound/init/kill.mp3", "sound", "kill", true);
                SystemLoading.addTask("File/indexFile/img/tx/fy.png", "photo", "fangYu", true);
                SystemLoading.addTask("File/indexFile/img/tx/fy.xml", "text", "fangYu", true);
                SystemLoading.addTask("File/indexFile/sound/init/fy.mp3", "sound", "fy", true);
                SystemLoading.addTask("File/indexFile/sound/init/jump.mp3", "sound", "jump", true);
                SystemLoading.addTask("File/indexFile/img/tx/shun.png", "photo", "shun", true);
                SystemLoading.addTask("File/indexFile/img/tx/shun.xml", "text", "shun", true);
                SystemLoading.addTask("File/indexFile/img/tx/Dao1.png", "photo", "TXDao1", true);
                SystemLoading.addTask("File/indexFile/img/tx/Dao1.xml", "text", "TXDao1", true);
                SystemLoading.addTask("File/indexFile/sound/init/shun.mp3", "sound", "shun", true);
                SystemLoading.addTask("File/indexFile/img/tx/daodichen.png", "photo", "daodichen", true);
                SystemLoading.addTask("File/indexFile/img/tx/daodichen.xml", "text", "daodichen", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/hurt.png", "photo", "System_HURT", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/hurt.xml", "text", "System_HURT", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/3.png", "photo", "BUTTON3", true);
                SystemLoading.addTask("File/indexFile/img/buttonUI/3.xml", "text", "BUTTON3", true);
                SystemLoading.addTask("File/indexFile/img/box/box.png", "photo", "BOX", true);
                SystemLoading.addTask("File/indexFile/img/ui/hpmp/HPMP.png", "photo", "HPMP", true);
                SystemLoading.addTask("File/indexFile/img/ui/hpmp/HPMP.xml", "text", "HPMP", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj1.png", "photo", "skill1", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj1.xml", "text", "skill1", true);
                if (IS_PREVIEW == false){
                    GameData.configLoad();
                };
                SystemLoading.addTask("File/indexFile/data/videos.xml", "text", "videos", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj1.png", "photo", "dj1", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj1.xml", "text", "dj1", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj2.png", "photo", "dj2", true);
                SystemLoading.addTask("File/indexFile/img/tx/dj2.xml", "text", "dj2", true);
                SystemLoading.addTask("File/indexFile/img/tx/DDJ1.png", "photo", "DDJ1", true);
                SystemLoading.addTask("File/indexFile/img/tx/DDJ1.xml", "text", "DDJ1", true);
                SystemLoading.addTask("File/indexFile/img/tx/SJFangYu.png", "photo", "SJFang", true);
                SystemLoading.addTask("File/indexFile/img/tx/SJFangYu.xml", "text", "SJFang", true);
                SystemLoading.addTask("File/indexFile/sound/tx/dadaji.mp3", "sound", "DDJ2SOUND", true);
                SystemLoading.addTask("File/indexFile/sound/tx/zhan.mp3", "sound", "DDJ1SOUND", true);
                SystemLoading.addTask("File/indexFile/sound/tx/baozha.mp3", "sound", "DDJ3SOUND", true);
                SystemLoading.addTask("File/indexFile/sound/tx/daodi.mp3", "sound", "DDJ4SOUND", true);
                SystemLoading.addTask("File/indexFile/sound/tx/dian.mp3", "sound", "SOUND_DIAN", true);
                SystemLoading.addTask("File/indexFile/sound/tx/d.mp3", "sound", "D", true);
                SystemLoading.addTask("File/indexFile/sound/tx/bing.mp3", "sound", "BingDaJi", true);
                SystemLoading.addTask("File/indexFile/sound/tx/bing2.mp3", "sound", "BingDaJi2", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/1.png", "photo", "JIAN1", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/1.xml", "text", "JIAN1", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/2.png", "photo", "JIAN2", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/2.xml", "text", "JIAN2", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/3.png", "photo", "JIAN3", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/3.xml", "text", "JIAN3", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/4.png", "photo", "JIAN4", true);
                SystemLoading.addTask("File/indexFile/img/tx/Jian/4.xml", "text", "JIAN4", true);
                SystemLoading.addTask("File/indexFile/img/skill/Buff1.png", "photo", "buff1", true);
                SystemLoading.addTask("File/indexFile/img/skill/Buff1.xml", "text", "buff1", true);
                SystemLoading.addTask("File/indexFile/img/ui/hit/hit.png", "photo", "System_HIT", true);
                SystemLoading.addTask("File/indexFile/img/ui/hit/num.png", "photo", "System_NUM", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/fight.png", "photo", "System_FIGHT", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/fight.xml", "text", "System_FIGHT", true);
                SystemLoading.addTask("File/indexFile/sound/fight/go.mp3", "sound", "System_FIGHT2", true);
                SystemLoading.addTask("File/indexFile/sound/fight/re.mp3", "sound", "System_FIGHT1", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/CD.png", "photo", "System_CD", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/CD.xml", "text", "System_CD", true);
                SystemLoading.addTask("File/indexFile/img/ui/1p2p/1P2P3P4P.png", "photo", "1P2P3P4P", true);
                SystemLoading.addTask("File/indexFile/img/ui/1p2p/1P2P3P4P.xml", "text", "1P2P3P4P", true);
                SystemLoading.addTask("File/indexFile/sound/fight/select.mp3", "sound", "Fight_SELECT", true);
                SystemLoading.addTask("File/indexFile/sound/fight/move.mp3", "sound", "Fight_MOVE", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/VS.png", "photo", "VS", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/KO.png", "photo", "KO", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/KO.xml", "text", "KO", true);
                SystemLoading.addTask("File/indexFile/sound/fight/ko.mp3", "sound", "KO", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/time_over.png", "photo", "Fight_TIMEOVER", true);
                SystemLoading.addTask("File/indexFile/img/ui/fight/win.jpg", "photo", "WIN", true);
                SystemLoading.addTask("File/indexFile/img/ui/time/num.png", "photo", "System_TIME", true);
                SystemLoading.addTask("File/indexFile/img/box/lvexp.png", "photo", "system_lvexp", true);
                SystemLoading.addTask("File/indexFile/img/box/lvexpt.png", "photo", "system_lvexpt", true);
                SystemLoading.addTask("File/indexFile/img/tx/chen1.png", "photo", "tx1", true);
                SystemLoading.addTask("File/indexFile/img/tx/chen1.xml", "text", "tx1", true);
                SystemLoading.addTask("File/indexFile/img/tx/chen2.png", "photo", "tx2", true);
                SystemLoading.addTask("File/indexFile/img/tx/chen2.xml", "text", "tx2", true);
                SystemLoading.addTask("File/indexFile/img/skill/bhit.png", "photo", "bhit", true);
                SystemLoading.addTask("File/indexFile/img/skill/bhit.xml", "text", "bhit", true);
                SystemLoading.startForOverOpen = this.skipTips;
                stage.addEventListener(KeyboardEvent.KEY_DOWN, this.Down);
                stage.addEventListener(KeyboardEvent.KEY_UP, this.Up);
                stage.addEventListener(MouseEvent.MOUSE_WHEEL, this.onWheel);
                this.addEventListener(R4399Main.INIT_LOGIN, this.initLogin);
                this.addEventListener(R4399Main.ERROR_LOGIN, this.errorLogin);
                this.addEventListener(R4399Main.EIXT_LOGIN, this.eixt);
                Open4399ToolsApi.getInstance().init();
                Open4399ToolsApi.getInstance().addEventListener(Open4399ToolsEvent.CHECK_BAD_WORDS, this.cheakText);
            } else {
                _loc1 = new TextField();
                _loc1.text = (("本游戏有太多的心血，请不要随意转载和破解本游戏，请支持正版，有需要可联系QQ：939029835" + "\n\n") + SwfRestrict.$error);
                _loc1.x = 0;
                _loc1.y = 0;
                _loc1.width = 700;
                _loc1.height = 500;
                _loc1.setTextFormat(new TextFormat(null, null, 0xFF0000));
                this.addChild(_loc1);
            };
        }
        private function onWheel(_arg1:MouseEvent):void{
        }
        private function skipTips():void{
            ComponentResourcesManage.askResources("Button", "PLAY", {
                event:this.login,
                text:TextBitmap.createBitmapData("进入游戏", 250, 50, 28),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.setXY("PLAY", new Point(((Main.contentWidth / 2) - (250 / 2)), (Main.contentHeight - 50)));
            if (this._startSwf){
                this._movieTips = new TextField();
                this._movieTips.text = "- ESC 跳过 -";
                this._movieTips.width = 200;
                this._movieTips.setTextFormat(new TextFormat(null, 12, 0xFFFFFF, true, null, null, null, null, TextFormatAlign.RIGHT));
                this._movieTips.height = 32;
                this._movieTips.x = 480;
                this._movieTips.y = 468;
                this.addChild(this._startSwf);
                this.addChild(this._movieTips);
            };
        }
        private function doRole():void{
            GameData.$mode = "1PSB";
            SystemLoadType.loadMAP("map1");
            SystemEvent.select({name:"JianXin"});
        }
        private function Up(_arg1:KeyboardEvent):void{
            if (IS_PREVIEW){
                return;
            };
            if (SystemP2P.$FightOK){
                P2POnline.send("up", "up", _arg1.keyCode);
            };
            if (_arg1.keyCode == Keyboard.V){
                GIFManage.start(this, 10);
            } else {
                if (_arg1.keyCode == Keyboard.B){
                    GIFManage.save();
                } else {
                    if (_arg1.keyCode == Keyboard.C){
                        GIFManage.stop(this);
                    };
                };
            };
        }
        public function setFight(_arg1:int):void{
            GameScore.setFight(_arg1);
        }
        private function eixt(_arg1:Event):void{
            ComponentResourcesManage.CG();
            this.init2();
        }
        private function login():void{
            if (!GameData.select_xml){
                GameData.select_xml = XML(((GameData.$xmlData == null)) ? DataStorage.readText("System_SELECT") : GameData.$xmlData);
            };
            if (this.$box == null){
                this.$box = new SystemDialogBox("box1");
                this.addChild(this.$box);
                this.$box.setKeyboard(this);
            };
            this.selectData();
            this.init2(false);
        }
        private function initLogin(_arg1:Event):void{
            if (this.testMain){
                this.testMain.setUserName(this.name4399);
            };
            if (ComponentResourcesManage.$Ob["gamemain"]){
                ComponentResourcesManage.$Ob["gamemain"].setGXName("设置");
                ComponentResourcesManage.$Ob["gamemain"].setData(R4399Main.getUserData());
                ComponentResourcesManage.$Ob["gamemain"].setUserName(R4399Main.serviceHold.isLog.name);
            };
            ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "读档成功", true);
        }
        private function errorLogin(_arg1:Event):void{
            if (ComponentResourcesManage.$Ob["gamemain"]){
                ComponentResourcesManage.$Ob["gamemain"].setGXName("登录");
            };
            ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "读档失败", true);
        }
        private function loginEvent(_arg1:GameSelectEvent):void{
            var _loc2:* = null;
            if (_arg1.clickString == "ann1"){
                R4399Main.loginAsk();
            } else {
                if (_arg1.clickString == "hxwz"){
                    navigateToURL(new URLRequest("http://tieba.baidu.com/p/3563408068?pn=3"), "_blank");
                } else {
                    if (((R4399Main.serviceHold) && (R4399Main.serviceHold.isLog))){
                        R4399Main.serviceHold.userLogOut();
                    };
                    _loc2 = (_arg1.target as DisplayObject);
                    _loc2.parent.removeChild(_loc2);
                    this.init2();
                };
            };
        }
        private function Down(_arg1:KeyboardEvent):void{
            var _loc3:*;
            var _loc4:*;
            var _loc5:String;
            var _loc2:* = null;
            if (_arg1.keyCode == 4001){
                this.onSelectHigh(null);
                return;
            };
            if (_arg1.keyCode == 4002){
                this.onSelectLow(null);
                return;
            };
            if (SystemP2P.$FightOK){
                P2POnline.send("down", "down", _arg1.keyCode);
                if ((((((((_arg1.keyCode == Keyboard.ESCAPE)) && (SystemEvent._playVideoArray))) && (ComponentResourcesManage.$word))) && (GameData.$fightBoolean))){
                    this.init2();
                };
                return;
            };
            if (_arg1.keyCode == Keyboard.T){
                return;
            };
            if ((ComponentResourcesManage.$Ob["SelectRole"] is SystemSelectBox)){
                this.$keyCode = (this.$keyCode + String(_arg1.keyCode));
                ComponentResourcesManage.$Ob["SelectRole"].code(this.$keyCode);
            };
            if (_arg1.keyCode == Keyboard.V){
                GameData.$danmu = !(GameData.$danmu);
            } else {
                if ((((_arg1.keyCode == Keyboard.ENTER)) && ((ComponentResourcesManage.$word is SystemWord)))){
                    GameData.$stageBoolean = !(GameData.$stageBoolean);
                    if (!this._paues_layer){
                        this._paues_layer = new SystemPauseLayer(stage.stageWidth, stage.stageHeight);
                    };
                    this._paues_layer.visible = !(GameData.$stageBoolean);
                    this._paues_layer.show(ComponentResourcesManage.$word.$hpmpArray[0].$role, ComponentResourcesManage.$word.$hpmpArray[1].$role);
                    this.addChild(this._paues_layer);
                } else {
                    if (_arg1.keyCode == Keyboard.F){
                        this.$keyCode = "";
                    } else {
                        if ((((_arg1.keyCode == Keyboard.ESCAPE)) && (GameData.$stageBoolean))){
                            if (this._movieTips){
                                this.removeChild(this._movieTips);
                                this._movieTips = null;
                                this._startSwf.removeEventListener(Event.ENTER_FRAME, this.onPlayVFrame);
                                this.removeChild(this._startSwf);
                                this._startSwf.unloadAndStop(true);
                                this._startSwf = null;
                                SystemLoading.setVisible(true);
                            };
                            if (IS_PREVIEW){
                                return;
                            };
                            if ((ComponentResourcesManage.$Ob["SelectRole"] is SystemSelectBox1D3)){
                                this.init2();
                            } else {
                                if ((((ComponentResourcesManage.$word is SystemWord)) && (GameData.$fightBoolean))){
                                    GameData.ns_select = "cg";
                                    ComponentResourcesManage.$word.CG();
                                };
                            };
                        } else {
                            if (GameData.$1PALLSelect){
                                switch (_arg1.keyCode){
                                    case Keyboard.Y:
                                        _loc3 = GameData;
                                        if (GameData.$mode !== "TwoAll"){
                                            _loc4 = (_loc3.$fightTo - 1);
                                            _loc3.$fightTo = _loc4;
                                        } else {
                                            _loc3.$fightTo = (_loc3.$fightTo - 2);
                                        };
                                        GameScore.init();
                                        ComponentResourcesManage.$word.CG();
                                        SystemLoadType.loadMAP(_loc3.$mapArray[int((Math.random() * _loc3.$mapArray.length))]);
                                        SystemEvent.select({name:_loc3.$roleSelectArray[0]});
                                        break;
                                    case Keyboard.N:
                                        GameData.ns_select = "cg";
                                        _loc5 = GameData.$mode;
                                        ComponentResourcesManage.$word.CG();
                                        if ((((((_loc5 == "1PALL")) || ((_loc5 == "SZ")))) || ((_loc5 == "TwoAll")))){
                                            this.$box.$api.addShow("挑战情况", ("你的战力:" + GameScore.getScore()), true);
                                            GameScore.flush();
                                            switch (_loc5){
                                                case "1PALL":
                                                    R4399Main.setCGScore(GameData.$roleSelectArray[0], GameScore.getScore());
                                                    break;
                                                case "SZ":
                                                    R4399Main.setSZScore(GameData.$roleSelectArray[0], GameScore.getScore());
                                                    break;
                                                case "TwoAll":
                                                    R4399Main.setSRScore(GameData.$roleSelectArray[0], GameScore.getScore());
                                                    R4399Main.setSRScore(GameData.$roleSelectArray[1], GameScore.getScore());
                                                    break;
                                            };
                                            R4399Main.saveData();
                                        };
                                        break;
                                };
                                ComponentResourcesManage.$stage.$box.$api.next();
                                ComponentResourcesManage.$stage.$box.$api.next();
                                GameData.$1PALLSelect = false;
                            };
                        };
                    };
                };
            };
        }
        private function Frame(_arg1:Event):void{
            this.addChild(this.$stopShape);
            if (MassageSend.massageSend == null){
                MassageSend.massageSend = new MassageSend();
                this.addChild(MassageSend.massageSend);
                MassageSend.massageSend.init();
            } else {
                MassageSend.massageSend.top = MassageSend.showBoolean;
            };
            if (P2POnline.$connectNum !== 0){
                P2POnline.show(this);
            };
        }
        public function P2P():void{
            P2POnline.open = this.P2POpen;
        }
        public function P2POpen():void{
            P2POnline.connect("Bno", this.P2PEvent);
            this.logo();
            this.addEventListener(Event.EXIT_FRAME, this.Frame);
        }
        public function P2PEvent(_arg1:NetStatusEvent, _arg2:NetGroup):void{
            var _loc3:* = undefined;
            var _loc4:* = null;
            if (_arg1.info.code == "NetGroup.Posting.Notify"){
                switch (_arg1.info.message.type){
                    case "KOCAONIMA":
                        ComponentResourcesManage.$stage.$box.$api.addShow("草泥马被发现的消息", "!!!!!!!!!!!!!!!!!!!!!", true);
                        for (_loc3 in _arg1.info.message.array) {
                        };
                        break;
                    case "DANMU":
                        if (GameData.$danmu){
                            _loc4 = new DanMu(String(_arg1.info.message.massage), int(_arg1.info.message.y), int(_arg1.info.message.speed));
                            _loc4;
                            this.addChild(_loc4);
                        };
                        break;
                };
            };
        }
        public function setNSData(_arg1:Object):void{
            var _loc2:* = null;
            (NSGameData.onlie = true);
            if (_arg1){
                GameScore.setFight(int(_arg1.fight));
                _loc2 = (ComponentResourcesManage.$Ob["fightA"] as TextWord);
                _loc2;
                (_loc2.setText = (("历史最高战力[" + int(_arg1.fight)) + "]"));
            } else {
                ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "暂无任何挑战历史记录", true);
            };
        }
        public function SavaTrue():void{
        }
        public function logo():void{
            (LogoApps.stage = this);
            (SystemBackground.bitmapData = new BitmapData(700, 500, false, 0));
            LogoApps.GIFArray(this.login, [DataStorage.readImg("Logo"), DataStorage.readImg("Logo2")]);
        }
        public function showUserRank(_arg1:Object):void{
            var param1:* = _arg1;
            var ob:* = param1;
            var data:* = ob.data;
            try {
                this.rank.showData(data);
            } catch(e:Error) {
                ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", e.toString());
            };
        }
        public function init2(_arg1:Boolean=true):void{
            if (IS_PREVIEW == true){
                SystemMucisPlay.soundValue(0, "system");
                (GameData.$mode = "1PSB");
                SystemLoadType.loadMAP("map2");
                (GameData.$roleSelectArray = ["LvMao", "LvMao"]);
                SystemEvent.select({name:GameData.$roleSelectArray[0]});
                return;
            };
            if (Main.keyMain){
                (Main.keyMain.visible = false);
            };
            if (P2PData.p2p){
                P2PData.p2p.closeServer();
            };
            if (SystemEvent._pingText){
                SystemEvent._pingText.parent.removeChild(SystemEvent._pingText);
                (SystemEvent._pingText = null);
            };
            if (SystemEvent._udptime){
                SystemEvent._udptime.stop();
                (SystemEvent._udptime = null);
            };
            (SystemEvent._p2ptype = "");
            (SystemEvent._playVideoArray = null);
            (SystemP2P.$FightOK = false);
            ComponentResourcesManage.CG();
            (NSGameData.ns = false);
            (SystemBackground.bitmapData = BitmapDataDraw.scaleXY(DataStorage.readImg("systemBJ"), 1, 1));
            if (!this._main){
                (this._main = new GameMain());
            };
            this.addChild(this._main);
            (this._main.width = (this._main.width * contentScale));
            (this._main.height = (this._main.height * contentScale));
            this._main.soundV(SystemMucisPlay.hitValue, SystemMucisPlay.value);
            this._main.setGG(DataStorage.readText("System_UPDATE"));
            this._main.setTimeSelect((GameData.$game_time == 0));
            this._main.addEventListener(GameSelectEvent.GAME_EVENT, this.gameEvent);
            (ComponentResourcesManage.$Ob["gamemain"] = this._main);
            this._main.setData(R4399Main.getUserData());
            if (!R4399Main.isLogin){
                this._main.setGXName("登录");
            };
            (SystemMucisPlay.systemMusic = DataStorage.readSound("systemOPEN"));
            if (!this.rank){
                (this.rank = new RankLayer());
                this.addChild(this.rank);
                this.rank.addEventListener(RankEvent.RANK_CLICK_EVENT, this.rankEvent);
                (this.rank.visible = false);
            };
            if (R4399Main.isLogin){
                if (_arg1){
                    R4399Main.saveData();
                    R4399Main.rankSubmit({itxt:"test"});
                };
                this._main.setUserName(R4399Main.serviceHold.isLog.name);
            };
            if (_test == false){
                (_test = true);
            };
        }
        private function playGoodV():void{
            (this._movieSpr = new Sprite());
            this._movieSpr.graphics.beginFill(0);
            this._movieSpr.graphics.drawRect(0, 0, 700, 500);
            this.addChild(this._movieSpr);
            var connect:* = new NetConnection();
            connect.connect(null);
            var ns:* = new NetStream(connect);
            ns.play("File/indexFile/movie/main_x264.mp3");
            var movie:* = new Video(700, 500);
            movie.attachNetStream(ns);
            var customClient:* = new Object();
            (customClient.onMetaData = function (){
            });
            (customClient.onPlayStatus = this.playEnd);
            (ns.client = customClient);
            this.addChild(movie);
            (this._movie = movie);
            (this._movieTips = new TextField());
            (this._movieTips.text = "- ESC 跳过 -");
            (this._movieTips.width = 200);
            this._movieTips.setTextFormat(new TextFormat(null, 12, 0xFFFFFF, true, null, null, null, null, TextFormatAlign.RIGHT));
            (this._movieTips.height = 32);
            this.addChild(this._movieTips);
            (this._movieTips.x = 480);
            (this._movieTips.y = 468);
        }
        private function playEnd(_arg1:Object):void{
            this.removeChild(this._movieSpr);
            this.removeChild(this._movieTips);
            this.addEventListener(Event.ENTER_FRAME, this.onMovieFrame);
        }
        private function onMovieFrame(_arg1:Event):void{
            if (this._movie.alpha > 0){
                (this._movie.alpha = (this._movie.alpha - 0.02));
            } else {
                this.removeChild(this._movie);
                this.removeEventListener(Event.ENTER_FRAME, this.onMovieFrame);
                (this._movie = null);
            };
        }
        private function rankEvent(_arg1:RankEvent):void{
            var _loc3:Object;
            var _loc4:Object;
            var _loc5:Array;
            var _loc6:Array;
            var _loc7:*;
            var _loc8:int;
            var _loc2:int = ((this._rankMode == "cg")) ? R4399Main.cgRankID : ((this._rankMode == "sz")) ? R4399Main.szRankID : ((this._rankMode == "zh")) ? R4399Main.zhRankID : R4399Main.srRankID;
            switch (_arg1.data){
                case "last":
                case "next":
                    R4399Main.rankByPage(_loc2, this.rank.getPage());
                    break;
                case "fj":
                    R4399Main.rankByOne(_loc2);
                    break;
                case "fh":
                    (this.rank.visible = false);
                    break;
                case "go":
                    R4399Main.rankByPage(_loc2, this.rank.getPage());
                    break;
            };
            if (_arg1.data.indexOf("btn") != -1){
                if (this.rank.getMCBoolean()){
                    this.rank.clearMc();
                    _loc3 = this.rank.getMCData();
                    _loc4 = null;
                    if (((_loc3) && (_loc3.extra))){
                        _loc4 = JSON.parse(P2PData.extract(_loc3.extra));
                        _loc4;
                    };
                    if (((_loc4) && (_loc4.role))){
                        _loc5 = String(_loc4.role).split(",");
                        _loc6 = null;
                        if (_loc4.rolez){
                            _loc6 = String(_loc4.rolez).split(",");
                            _loc6;
                        };
                        for (var _loc11 in _loc5) {
                            _loc7 = _loc11;
                            _loc11;
                            _loc8 = (_loc6) ? _loc6[_loc7] : 0;
                            if (String((_loc6) ? _loc6[_loc7] : "") == "m"){
                                _loc8 = 100;
                                _loc8;
                            };
                            this.rank.addMC(DataStorage.readImg(("Hred" + _loc5[_loc7])), _loc8);
                        };
                    };
                };
            };
        }
        private function cheakText(_arg1:Open4399ToolsEvent):void{
            if (JSON.parse(_arg1.data).code == 10000){
                ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "设置成功！");
                R4399Main.setIText(this._rtxt);
                R4399Main.saveData();
                R4399Main.rankSubmit({itxt:"test"});
            } else {
                ComponentResourcesManage.$stage.$box.$api.addShow("系统提示", "你的言语使用不当");
                ComponentResourcesManage.$Ob["gamemain"].setIText(this._ztxt);
            };
        }
        public function onSwfComplete(_arg1:Event):void{
            var _loc2:* = (_arg1.target as LoaderInfo).content;
            this.addChild((_arg1.target as LoaderInfo).loader);
            var _loc3:* = _loc2;
            _loc3["setContext"](this);
        }
        public function gameEvent(_arg1:GameSelectEvent):void{
            var videoMc:* = null;
            var file:* = null;
            var ob:* = null;
            var event:* = _arg1;
            var e:* = event;
            switch (e.clickString){
                case "videos":
                    var _loc3 = new VideoMain((JSON.parse(DataStorage.readText("videos")) as Array));
                    videoMc = _loc3;
                    _loc3;
                    this.addChild(videoMc);
                    break;
                case "playVideo":
                    _loc3 = new FileReference();
                    file = _loc3;
                    _loc3;
                    file.browse([new FileFilter("幻想纹章1.9数据文件", "*.zygame")]);
                    file.addEventListener(Event.SELECT, function (_arg1:Event):void{
                        (_arg1.target as FileReference).load();
                    });
                    file.addEventListener(Event.COMPLETE, function (_arg1:Event):void{
                        var _loc2:* = (_arg1.target.data as ByteArray);
                        SystemEvent.buildByte(_loc2, onSwfComplete);
                    });
                    break;
                case "online":
                    SystemEvent.online();
                    break;
                case "s99":
                    (GameData.$game_time = 99);
                    ComponentResourcesManage.$Ob["gamemain"].setTimeSelect(false);
                    R4399Main.saveData();
                    break;
                case "s999":
                    (GameData.$game_time = 0);
                    ComponentResourcesManage.$Ob["gamemain"].setTimeSelect(true);
                    break;
                case "bj":
                    if (!R4399Main.isLogin){
                        R4399Main.loginAsk();
                        return;
                    };
                    if ((e.target as GameMain).isOKBoolean()){
                        (this._rtxt = (e.target as GameMain).getIText());
                        Open4399ToolsApi.getInstance().checkBadWords(this._rtxt);
                    } else {
                        (this._ztxt = (e.target as GameMain).getIText());
                    };
                    break;
                case "cgph":
                    if (!R4399Main.isLogin){
                        R4399Main.loginAsk();
                        return;
                    };
                    (this._rankMode = "cg");
                    (this.rank.visible = true);
                    this.addChild(this.rank);
                    this.rank.showData(null);
                    this.rank.setPage(1);
                    this.rank.setString("闯关战力排行榜");
                    R4399Main.rankByPage(R4399Main.cgRankID, this.rank.getPage());
                    break;
                case "szph":
                    if (!R4399Main.isLogin){
                        R4399Main.loginAsk();
                        return;
                    };
                    (this._rankMode = "sz");
                    (this.rank.visible = true);
                    this.addChild(this.rank);
                    this.rank.showData(null);
                    this.rank.setPage(1);
                    this.rank.setString("死战战力排行榜");
                    R4399Main.rankByPage(R4399Main.szRankID, this.rank.getPage());
                    break;
                case "srph":
                    if (!R4399Main.isLogin){
                        R4399Main.loginAsk();
                        return;
                    };
                    (this._rankMode = "sr");
                    (this.rank.visible = true);
                    this.addChild(this.rank);
                    this.rank.showData(null);
                    this.rank.setPage(1);
                    this.rank.setString("双人战力排行榜");
                    R4399Main.rankByPage(R4399Main.srRankID, this.rank.getPage());
                    break;
                case "zhph":
                    if (!R4399Main.isLogin){
                        R4399Main.loginAsk();
                        return;
                    };
                    (this._rankMode = "zh");
                    (this.rank.visible = true);
                    this.addChild(this.rank);
                    this.rank.showData(null);
                    this.rank.setPage(1);
                    this.rank.setString("单人综合战力排行榜");
                    R4399Main.rankByPage(R4399Main.zhRankID, this.rank.getPage());
                    break;
                case "gdyx":
                    if (Main.IS_PHONE){
                        ComponentResourcesManage.$stage.$box.$api.addShow("提示", "请百度搜索幻想纹章", true);
                        return;
                    };
                    R4399Main.rankSubmit({itxt:(e.target as GameMain).getIText()});
                    R4399Main.moreGame();
                    break;
                case "fk":
                    SystemEvent.fankui();
                    break;
                case "hfmr":
                    SystemMucisPlay.soundValue(1, "hit");
                    SystemMucisPlay.soundValue(1, "system");
                    break;
                case "open1":
                    SystemMucisPlay.soundValue(1, "hit");
                    break;
                case "close1":
                    SystemMucisPlay.soundValue(0, "hit");
                    break;
                case "open2":
                    SystemMucisPlay.soundValue(1, "system");
                    break;
                case "close2":
                    SystemMucisPlay.soundValue(0, "system");
                    break;
                case "sztz":
                case "sz":
                case "cgms":
                case "srcg":
                    (this._mode = e.clickString);
                    if ((((this._mode == "sz")) || ((this._mode == "sztz")))){
                        ComponentResourcesManage.$Ob["gamemain"].updateJXFight("SZ");
                    } else {
                        if (this._mode == "cgms"){
                            ComponentResourcesManage.$Ob["gamemain"].updateJXFight("1PALL");
                        };
                    };
                    break;
                case "ND1":
                    (GameData.$lv = 80);
                    this.gamePlay();
                    break;
                case "ND2":
                    (GameData.$lv = 50);
                    this.gamePlay();
                    break;
                case "ND3":
                    (GameData.$lv = 35);
                    this.gamePlay();
                    break;
                case "lxms":
                    SystemEvent.case_1P_VS_SB();
                    if (Main.keyMain){
                        (Main.keyMain.visible = true);
                    };
                    break;
                case "dnms":
                    (this._mode = "dnms");
                    break;
                case "gzms":
                    SystemEvent.case_COM_VS_COM();
                    if (Main.keyMain){
                        (Main.keyMain.visible = true);
                    };
                    break;
                case "srdz":
                    if (Main.IS_PHONE){
                        ComponentResourcesManage.$stage.$box.$api.addShow("提示", "本版本为手机版，不开放此功能", true);
                        return;
                    };
                    SystemEvent.case_1P_VS_2P();
                    break;
                case "drtz":
                    (this._mode = "cgms");
                    ComponentResourcesManage.$Ob["gamemain"].updateJXFight("1PALL");
                    break;
                case "sztz":
                    (this._mode = "sz");
                    ComponentResourcesManage.$Ob["gamemain"].updateJXFight("SZ");
                    break;
                case "srtz":
                    (this._mode = "srcg");
                    break;
                case "jx":
                    _loc3 = R4399Main.getUserData();
                    ob = _loc3;
                    _loc3;
                    if ((((this._mode == "sz")) || ((this._mode == "sztz")))){
                        if ((((((ob.szTarget == "")) || ((ob.szDCeng >= 41)))) || ((ob.szName == "???")))){
                            ComponentResourcesManage.$Ob["gamemain"].go(5);
                            break;
                        };
                        (GameData.$lv = int(ob.szNanDu));
                        (GameData.ns_select = "none");
                        (GameData.$fightTo = ob.szDCeng);
                        (GameData.SZRoleObject.hp = ob.szHP);
                        (GameData.$mode = "SZ");
                        SystemLoadType.loadMAP("map1");
                        GameData.updateFightArray();
                        GameScore.initScore();
                        GameScore.addScore(ob.szFight);
                        GameScore.flush();
                        SystemEvent.select({name:ob.szTarget});
                    } else {
                        if ((((((ob.cgTarget == "")) || ((ob.cgTo >= 11)))) || ((ob.cgName == "???")))){
                            ComponentResourcesManage.$Ob["gamemain"].go(5);
                            break;
                        };
                        (GameData.$lv = int(ob.cgNanDu));
                        (GameData.ns_select = "none");
                        (GameData.$fightTo = ob.cgTo);
                        (GameData.$mode = "1PALL");
                        SystemLoadType.loadMAP("map1");
                        if (!ob.cgArr){
                            GameData.updateFightArray();
                        } else {
                            (GameData.$fightArray = ob.cgArr);
                        };
                        GameScore.initScore();
                        GameScore.addScore(ob.cgFight);
                        GameScore.flush();
                        SystemEvent.select({name:ob.cgTarget});
                    };
                    break;
                case "cx":
                    ComponentResourcesManage.$Ob["gamemain"].go(5);
                    break;
            };
        }
        private function onLineConnect():void{
            ComponentResourcesManage.$stage.$box.$api.addShow("联机情况", "链接成功！！！", true);
            ComponentResourcesManage.CG();
            SystemP2P.toSystemP2P();
        }
        public function gamePlay():void{
            switch (this._mode){
                case "sztz":
                case "sz":
                    SystemEvent.case_SZ();
                    break;
                case "drtz":
                case "cgms":
                    SystemEvent.case_1P_VS_ALL();
                    break;
                case "srcg":
                    if (Main.IS_PHONE){
                        ComponentResourcesManage.$stage.$box.$api.addShow("提示", "本版本为手机版，不开放此功能", true);
                        return;
                    };
                    SystemEvent.case_1P2P_VS_ALL();
                    break;
                case "dnms":
                    SystemEvent.case_1P_VS_COM();
                    break;
            };
            if (Main.keyMain){
                (Main.keyMain.visible = true);
            };
        }
        private function selectData():void
		{var _loc9_:* = undefined;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = GameData.select_xml;
         GameData.$allFightArray = _loc9_ = [];
         GameData._select_array = _loc9_ = [];
         GameData._lock_array = _loc9_ = new Object();
         var _loc10_:* = 0;
         while(_loc10_ < _loc7_.select.length())
         {
            _loc1_ = _loc7_.select[_loc10_].role.length();
            if(String(_loc7_.select[_loc10_].@name) === "怪兽库")
            {
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  _loc5_ = _loc7_.select[_loc10_].role[_loc4_].@head;
                  if(!GameData.$roleNengLi[_loc5_])
                  {
                     (_loc6_ = new Object()).hp = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@hp;
                     _loc6_.mp = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@mp;
                     _loc6_.fang = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@fang;
                     _loc6_.li = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@li;
                     _loc6_.kt = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@kt;
                     _loc6_.speed = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@speed;
                     _loc6_.zl = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@zl;
                     _loc6_.jump = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@jump;
                     _loc6_.bq = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@bq;
                     GameData.$roleNengLi[_loc5_] = _loc9_ = _loc6_;
                  }
                  _loc4_++;
               }
            }
            else
            {
               _loc2_ = 0;
               _loc3_ = R4399Main.getUserData();
               _loc2_ = _loc9_ = _loc2_ + _loc3_.cgScore;
               _loc2_ = _loc9_ = _loc2_ + _loc3_.szScore;
               _loc2_ = _loc9_ = _loc2_ + _loc3_.srScore;
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  if(String(_loc7_.select[_loc10_].role[_loc4_].@head) != "NoKown")
                  {
                     GameData.$allFightArray.push(String(_loc7_.select[_loc10_].role[_loc4_].@head));
                  }
                  if(int(_loc7_.select[_loc10_].role[_loc4_].@win) <= _loc2_ || !SwfRestrict.$boolean)
                  {
                     _loc5_ = String(_loc7_.select[_loc10_].role[_loc4_].@head);
                     GameData._select_array.push(String(_loc7_.select[_loc10_].role[_loc4_].@head));
                     if(!GameData.$roleNengLi[_loc5_])
                     {
                        (_loc6_ = new Object()).hp = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@hp;
                        _loc6_.mp = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@mp;
                        _loc6_.fang = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@fang;
                        _loc6_.li = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@li;
                        _loc6_.kt = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@kt;
                        _loc6_.speed = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@speed;
                        _loc6_.zl = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@zl;
                        _loc6_.jump = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@jump;
                        _loc6_.bq = _loc9_ = _loc7_.select[_loc10_].role[_loc4_].@bq;
                        GameData.$roleNengLi[_loc5_] = _loc9_ = _loc6_;
                     }
                  }
                  else
                  {
                     GameData._lock_array[String(_loc7_.select[_loc10_].role[_loc4_].@head)] = _loc9_ = int(_loc7_.select[_loc10_].role[_loc4_].@win);
                  }
                  _loc4_++;
               }
            }
            _loc10_++;
         }
        }
        public function init():void{
            (NSGameData.ns = false);
            if (!GameData.select_xml){
                (GameData.select_xml = XML(((GameData.$xmlData == null)) ? DataStorage.readText("System_SELECT") : GameData.$xmlData));
            };
            if (!this.$lvexp){
                (this.$lvexp = new LvEXP());
                this.addChild(this.$lvexp);
                NSGameData.initRoleData();
            } else {
                (this.$lvexp.vis = false);
            };
            (GameData.ns_select = "none");
            (SystemBackground.bitmapData = BitmapDataDraw.scaleXY(DataStorage.readImg("systemBJ"), 1, 1));
            ComponentResourcesManage.askResources("SystemUpdate", "SystemUpdate", null);
            ComponentResourcesManage.setXY("SystemUpdate", new Point(10, 30));
            ComponentResourcesManage.askResources("Button", "UpdateGame", {
                event:this.api4399showGameList,
                text:TextBitmap.createBitmapData("更多游戏", 100, 30),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"), XML(DataStorage.readText("buttonUI1")))
            });
            ComponentResourcesManage.askResources("Button", "RankGame", {
                event:this.api4399showRankList,
                text:TextBitmap.createBitmapData("排行榜", 100, 30),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"), XML(DataStorage.readText("buttonUI1")))
            });
            ComponentResourcesManage.askResources("Button", "FanKui", {
                event:SystemEvent.fankui,
                text:TextBitmap.createBitmapData("反馈", 100, 30),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"), XML(DataStorage.readText("buttonUI1")))
            });
            ComponentResourcesManage.askResources("Button", "AboutGame", {
                event:SystemEvent.about,
                text:TextBitmap.createBitmapData("关于", 100, 30),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"), XML(DataStorage.readText("buttonUI1")))
            });
            ComponentResourcesManage.askResources("Button", "Help", {
                event:this.openHelp,
                text:TextBitmap.createBitmapData("游戏帮助", 100, 30),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI1"), XML(DataStorage.readText("buttonUI1")))
            });
            ComponentResourcesManage.askResources("Button", "1PALL", {
                event:SystemEvent.case_1P_VS_ALL,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[0]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "TwoALL", {
                event:SystemEvent.case_1P2P_VS_ALL,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[12]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "1P2P", {
                event:SystemEvent.case_1P_VS_2P,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[1]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "1PCOM", {
                event:SystemEvent.case_1P_VS_COM,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[2]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "1PSB", {
                event:SystemEvent.case_1P_VS_SB,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[3]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "COMCOM", {
                event:SystemEvent.case_COM_VS_COM,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[4]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "SYSTEM", {
                event:this.toSystem,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[11]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.askResources("Button", "LOG", {
                event:SystemEvent.rank,
                text:new BitmapData(1, 1, true, 0),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI3"), XML(DataStorage.readText("buttonUI3")))
            });
            ComponentResourcesManage.askResources("Button", "ONLINE", {
                event:SystemEvent.online,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[5]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.setXY("RankGame", new Point(50, 475));
            ComponentResourcesManage.setXY("FanKui", new Point(350, 475));
            ComponentResourcesManage.setXY("UpdateGame", new Point(150, 475));
            ComponentResourcesManage.setXY("AboutGame", new Point(250, 475));
            ComponentResourcesManage.setXY("Help", new Point(450, 475));
            ComponentResourcesManage.setXY("1PALL", new Point(((stage.stageWidth / 2) + (239 / 3)), 50));
            ComponentResourcesManage.setXY("TwoALL", new Point(((stage.stageWidth / 2) + (239 / 3)), 100));
            ComponentResourcesManage.setXY("1P2P", new Point(((stage.stageWidth / 2) + (239 / 3)), 150));
            ComponentResourcesManage.setXY("1PCOM", new Point(((stage.stageWidth / 2) + (239 / 3)), 200));
            ComponentResourcesManage.setXY("1PSB", new Point(((stage.stageWidth / 2) + (239 / 3)), 250));
            ComponentResourcesManage.setXY("COMCOM", new Point(((stage.stageWidth / 2) + (239 / 3)), 300));
            ComponentResourcesManage.setXY("SYSTEM", new Point(((stage.stageWidth / 2) + (239 / 3)), 350));
            ComponentResourcesManage.setXY("LOG", new Point(300, 40));
            ComponentResourcesManage.setXY("ONLINE", new Point(((stage.stageWidth / 2) + (239 / 3)), 400));
            if (this.$box == null){
                (this.$box = new SystemDialogBox("box1"));
                this.addChild(this.$box);
                this.$box.setKeyboard(this);
            };
            if (this.$roleBox == null){
                (this.$roleBox = new SystemRoleDialogBox("box2"));
                this.addChild(this.$roleBox);
                this.$roleBox.setKeyboard(this);
            };
            var _loc1:* = new TextWord("未登录", new Point(110, 48), new Rectangle(0, 0, 295, 24));
            (ComponentResourcesManage.$Ob["rank"] = _loc1);
            ComponentResourcesManage.$stage.addChild(_loc1);
            (_loc1.$textForm.align = TextFormatAlign.RIGHT);
            (_loc1.setColor = 0xFFFF00);
            var _loc2:* = new TextWord("周排行 - NO.10000    月排行 - NO.10000", new Point(35, 395), new Rectangle(0, 0, 293, 24));
            (ComponentResourcesManage.$Ob["rankA"] = _loc2);
            ComponentResourcesManage.$stage.addChild(_loc2);
            (_loc2.$textForm.align = TextFormatAlign.LEFT);
            (_loc2.setColor = 0xFFFF00);
            var _loc3:* = new TextWord("历史最高战力[0]", new Point(263, 395), new Rectangle(0, 0, 136, 24));
            (ComponentResourcesManage.$Ob["fightA"] = _loc3);
            ComponentResourcesManage.$stage.addChild(_loc3);
            (_loc3.$textForm.align = TextFormatAlign.RIGHT);
            (_loc3.setColor = 0xFFFF00);
            this.updateRank(this._rank_ob);
            (SystemMucisPlay.systemMusic = DataStorage.readSound("systemOPEN"));
        }
        public function openHelp(){
            var _loc1:* = new GameHelp();
            this.addChild(_loc1);
        }
        public function updateRank(_arg1:Object):void{
            var _loc2:* = null;
            var _loc3:* = null;
            var _loc4:* = null;
            (this._rank_ob = _arg1);
            if (ComponentResourcesManage.$Ob["rank"]){
                _loc2 = ComponentResourcesManage.$Ob["rank"];
                _loc2;
                _loc3 = ComponentResourcesManage.$Ob["rankA"];
                _loc3;
                _loc4 = ComponentResourcesManage.$Ob["fightA"];
                _loc4;
                if (_arg1){
                    (_loc3.setText = ((("月排行 - NO." + ((int(_arg1.yue) == 0)) ? "无" : _arg1.yue) + "    周排行 - NO.") + ((int(_arg1.zhou) == 0)) ? "无" : _arg1.zhou));
                    (_loc2.setText = (((((("纹章使[" + _arg1.name) + "] 战力[") + _arg1.fight) + "] 你的日排名[") + ((_arg1.rank == 0)) ? "无" : _arg1.rank) + "]"));
                    (_loc4.setText = (("历史最高战力[" + GameScore.getFight()) + "]"));
                    (_loc2.visible = true);
                } else {
                    (_loc2.setText = "未登录");
                    (_loc3.setText = "");
                    (_loc4.setText = "");
                    (_loc2.visible = false);
                };
                (ComponentResourcesManage.$Ob["LOG"].visible = !(_loc2.visible));
            };
        }
        public function getFight():int{
            return (GameScore.getFight());
        }
        public function logexit():void{
            GameScore.setFight(0);
        }
        public function toSystem():void{
            ComponentResourcesManage.CG();
            (ComponentResourcesManage.$Ob["Text1"] = new TextWord("背景音效", new Point(50, 50), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text1"]);
            ComponentResourcesManage.askResources("Button", "SoundZuo", {
                event:this.SoudStop,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("SoundZuo", new Point(50, 90));
            ComponentResourcesManage.askResources("Button", "SoundYou", {
                event:this.SoudPlay,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("SoundYou", new Point(450, 90));
            (ComponentResourcesManage.$Ob["SoundYou"].scaleX = -1);
            (ComponentResourcesManage.$Ob["Sound"] = new TextWord(this.SoundData(SystemMucisPlay.$mode), new Point(210, 100), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Sound"]);
            (ComponentResourcesManage.$Ob["Text2"] = new TextWord("难度设置", new Point(50, 150), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text2"]);
            ComponentResourcesManage.askResources("Button", "NDZuo", {
                event:this.NDLast,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("NDZuo", new Point(50, 190));
            ComponentResourcesManage.askResources("Button", "NDYou", {
                event:this.NDNext,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("NDYou", new Point(450, 190));
            (ComponentResourcesManage.$Ob["NDYou"].scaleX = -1);
            (ComponentResourcesManage.$Ob["ND"] = new TextWord(NDString(), new Point(230, 200), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["ND"]);
            (ComponentResourcesManage.$Ob["Text3"] = new TextWord("品质设置(如果性能不好，请设置为低)", new Point(50, 250), new Rectangle(0, 0, 300, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text3"]);
            ComponentResourcesManage.askResources("Button", "PZZuo", {
                event:this.PZNext,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("PZZuo", new Point(50, 290));
            ComponentResourcesManage.askResources("Button", "PZYou", {
                event:this.PZLast,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("PZYou", new Point(450, 290));
            (ComponentResourcesManage.$Ob["PZYou"].scaleX = -1);
            (ComponentResourcesManage.$Ob["PZ"] = new TextWord(this.PZString(), new Point(230, 300), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["PZ"]);
            (ComponentResourcesManage.$Ob["Text4"] = new TextWord("时间设置", new Point(50, 350), new Rectangle(0, 0, 300, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["Text4"]);
            ComponentResourcesManage.askResources("Button", "TIMEZuo", {
                event:this.TimeNext,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("TIMEZuo", new Point(50, 390));
            ComponentResourcesManage.askResources("Button", "TIMEYou", {
                event:this.TimeLast,
                text:null,
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("BUTTON3"), XML(DataStorage.readText("BUTTON3")))
            });
            ComponentResourcesManage.setXY("TIMEYou", new Point(450, 390));
            (ComponentResourcesManage.$Ob["TIMEYou"].scaleX = -1);
            (ComponentResourcesManage.$Ob["TIME"] = new TextWord(this.TimeString(), new Point(230, 400), new Rectangle(0, 0, 100, 24)));
            ComponentResourcesManage.$stage.addChild(ComponentResourcesManage.$Ob["TIME"]);
            ComponentResourcesManage.askResources("Button", "EXIT", {
                event:SystemEvent.exit,
                text:BitmapDataDraw.xmlForBitmapData(DataStorage.readImg("Menu"), XML(DataStorage.readText("Menu")).SubTexture[9]),
                array:BitmapDataDraw.buttonBitmapDataArray(DataStorage.readImg("buttonUI2"), XML(DataStorage.readText("buttonUI2")))
            });
            ComponentResourcesManage.setXY("EXIT", new Point(50, 440));
        }
        public function TimeLast():void{
            if (GameData.$game_time == 99){
                (GameData.$game_time = 120);
            } else {
                if (GameData.$game_time == 120){
                    (GameData.$game_time = 0);
                };
            };
            (ComponentResourcesManage.$Ob["TIME"].setText = this.TimeString());
        }
        public function TimeNext():void{
            if (GameData.$game_time == 0){
                (GameData.$game_time = 120);
            } else {
                if (GameData.$game_time == 120){
                    (GameData.$game_time = 99);
                };
            };
            (ComponentResourcesManage.$Ob["TIME"].setText = this.TimeString());
        }
        public function TimeString():String{
            if (GameData.$game_time == 0){
                return ("无限");
            };
            return (String(GameData.$game_time));
        }
        public function PZNext():void{
            var _loc1:*;
            var _loc2:*;
            if (this.Pz !== 3){
                _loc1 = this;
                _loc2 = (this.Pz + 1);
                (_loc1.Pz = _loc2);
                (ComponentResourcesManage.$Ob["PZ"].setText = this.PZString());
            };
        }
        public function PZLast():void{
            var _loc1:*;
            var _loc2:*;
            if (this.Pz !== 0){
                _loc1 = this;
                _loc2 = (this.Pz - 1);
                (_loc1.Pz = _loc2);
                (ComponentResourcesManage.$Ob["PZ"].setText = this.PZString());
            };
        }
        private function PZString():String{
            switch (this.Pz){
                case 0:
                    (stage.quality = StageQuality.MEDIUM);
                    return ("最好");
                case 1:
                    (stage.quality = StageQuality.HIGH);
                    return ("高");
                case 2:
                    (stage.quality = StageQuality.MEDIUM);
                    return ("中");
                case 3:
                    (stage.quality = StageQuality.LOW);
                    return ("低");
            };
            return ("无");
        }
        public function NDNext():void{
            if (GameData.$lv !== 35){
                (GameData.$lv = (GameData.$lv - 15));
                (ComponentResourcesManage.$Ob["ND"].setText = NDString());
            };
        }
        public function NDLast():void{
            if (GameData.$lv !== 95){
                (GameData.$lv = (GameData.$lv + 15));
                (ComponentResourcesManage.$Ob["ND"].setText = NDString());
            };
        }
        public function SoudStop():void{
            var _loc1:*;
            var _loc2:*;
            if (SystemMucisPlay.$mode != 0){
                _loc1 = SystemMucisPlay;
                _loc2 = (_loc1.$mode - 1);
                (_loc1.$mode = _loc2);
                (ComponentResourcesManage.$Ob["Sound"].setText = this.SoundData(_loc1.$mode));
            };
        }
        public function SoudPlay():void{
            var _loc1:*;
            var _loc2:*;
            if (SystemMucisPlay.$mode != 3){
                _loc1 = SystemMucisPlay;
                _loc2 = (_loc1.$mode + 1);
                (_loc1.$mode = _loc2);
                (ComponentResourcesManage.$Ob["Sound"].setText = this.SoundData(_loc1.$mode));
            };
        }
        private function SoundData(_arg1:int):String{
            switch (_arg1){
                case 0:
                    SystemMucisPlay.soundValue(1);
                    return ("音效全部开启");
                case 1:
                    SystemMucisPlay.soundValue(1, "hit");
                    SystemMucisPlay.soundValue(0, "system");
                    return ("背景音效关闭");
                case 2:
                    SystemMucisPlay.soundValue(0, "hit");
                    SystemMucisPlay.soundValue(1, "system");
                    return ("打击音效关闭");
                case 3:
                    SystemMucisPlay.soundValue(0);
                    return ("音效全部关闭");
            };
            return ("none");
        }
        public function OPENTEST():void{
            (IS_TEST = true);
        }

    }
}//package 
