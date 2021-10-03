package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_180:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_279:IHabboCommunicationManager;
      
      private var var_834:IHabboLocalizationManager;
      
      private var var_835:IHabboConfigurationManager;
      
      private var var_392:ISessionDataManager;
      
      private var var_1035:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_61:HelpUI;
      
      private var var_124:TutorialUI;
      
      private var var_685:HotelMergeUI;
      
      private var var_833:RegistrationUI;
      
      private var var_1280:CallForHelpData;
      
      private var var_2155:UserRegistry;
      
      private var var_2154:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1280 = new CallForHelpData();
         this.var_2155 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1035 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2154 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2154;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1280;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2155;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_834;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_180;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_392;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_124;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_685;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_124)
         {
            return this.var_124.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.dispose();
            this.var_61 = null;
         }
         if(this.var_124 != null)
         {
            this.var_124.dispose();
            this.var_124 = null;
         }
         if(this.var_685)
         {
            this.var_685.dispose();
            this.var_685 = null;
         }
         if(this.var_833 != null)
         {
            this.var_833.dispose();
            this.var_833 = null;
         }
         if(this.var_1035 != null)
         {
            this.var_1035.dispose();
            this.var_1035 = null;
         }
         this._incomingMessages = null;
         if(this.var_180)
         {
            this.var_180.release(new IIDHabboToolbar());
            this.var_180 = null;
         }
         if(this.var_834)
         {
            this.var_834.release(new IIDHabboLocalizationManager());
            this.var_834 = null;
         }
         if(this.var_279)
         {
            this.var_279.release(new IIDHabboCommunicationManager());
            this.var_279 = null;
         }
         if(this.var_835)
         {
            this.var_835.release(new IIDHabboConfigurationManager());
            this.var_835 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_392 != null)
         {
            this.var_392.release(new IIDSessionDataManager());
            this.var_392 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_61 != null)
         {
            this.var_61.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1035;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_279 != null && param1 != null)
         {
            this.var_279.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_835 == null)
         {
            return param1;
         }
         return this.var_835.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_61 != null)
         {
            this.var_61.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1280.reportedUserId = param1;
         this.var_1280.reportedUserName = param2;
         this.var_61.showUI(HabboHelpViewEnum.const_390);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_61 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_61.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_61 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_61 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_834,this.var_180);
         }
         return this.var_61 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_124 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_124 = new TutorialUI(this);
         }
         return this.var_124 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_124 != null)
         {
            this.var_124.dispose();
            this.var_124 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_685)
         {
            this.var_685 = new HotelMergeUI(this);
         }
         this.var_685.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_833)
         {
            this.var_833 = new RegistrationUI(this);
         }
         this.var_833.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_124 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_124.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_279 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_279);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_180 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_834 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_835 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_96,this.onRoomSessionEvent);
         this.var_180.events.addEventListener(HabboToolbarEvent.const_69,this.onHabboToolbarEvent);
         this.var_180.events.addEventListener(HabboToolbarEvent.const_40,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_392 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               if(this.var_61 != null)
               {
                  this.var_61.setRoomSessionStatus(true);
               }
               if(this.var_124 != null)
               {
                  this.var_124.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_96:
               if(this.var_61 != null)
               {
                  this.var_61.setRoomSessionStatus(false);
               }
               if(this.var_124 != null)
               {
                  this.var_124.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_180 != null)
         {
            this.var_180.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_115,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_69)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_40)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
