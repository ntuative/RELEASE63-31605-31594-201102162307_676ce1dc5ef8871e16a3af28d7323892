package com.sulake.habbo.help.register
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.communication.messages.outgoing.help.SendRegistrationDataComposer;
   import com.sulake.habbo.help.HabboHelp;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class RegistrationUI
   {
       
      
      private var var_174:HabboHelp;
      
      private var var_824:RegistrationView;
      
      public function RegistrationUI(param1:HabboHelp)
      {
         super();
         this.var_174 = param1;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this.var_174.windowManager;
      }
      
      public function get assets() : IAssetLibrary
      {
         return this.var_174.assets;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_174.localization;
      }
      
      public function get myName() : String
      {
         return this.var_174.ownUserName;
      }
      
      public function dispose() : void
      {
         this.var_174 = null;
         if(this.var_824)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
      }
      
      public function showRegistrationView() : void
      {
         if(!this.var_824)
         {
            this.var_824 = new RegistrationView(this);
         }
         this.var_824.showMainView();
      }
      
      public function method_8(param1:String, param2:String, param3:Boolean) : void
      {
         this.var_174.sendMessage(new SendRegistrationDataComposer(param1,param2,param3));
      }
   }
}
