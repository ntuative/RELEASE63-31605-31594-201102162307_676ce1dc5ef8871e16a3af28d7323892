package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1775:int;
      
      private var var_2460:int;
      
      private var var_1132:int;
      
      private var var_494:Number;
      
      private var var_2461:Boolean;
      
      private var var_2459:int;
      
      private var var_1786:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2460 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2459 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2461 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1132;
         if(this.var_1132 == 1)
         {
            this.var_494 = param1;
            this.var_1775 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1132);
            this.var_494 = this.var_494 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2461 && param3 - this.var_1775 >= this.var_2460 && this.var_1786 < this.var_2459)
         {
            _loc5_ = 1000 / this.var_494;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1786;
            this.var_1775 = param3;
            this.var_1132 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
