package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1243:IHabboTracking;
      
      private var var_1891:Boolean = false;
      
      private var var_2664:int = 0;
      
      private var var_1887:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1243 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1243 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1891 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2664 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1891)
         {
            return;
         }
         ++this.var_1887;
         if(this.var_1887 <= this.var_2664)
         {
            this.var_1243.track("toolbar",param1);
         }
      }
   }
}
