package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2457:Number = 0.0;
      
      private var var_2456:Number = 0.0;
      
      private var var_2455:Number = 0.0;
      
      private var var_2458:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2457 = param1;
         this.var_2456 = param2;
         this.var_2455 = param3;
         this.var_2458 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2457;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2456;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2455;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2458;
      }
   }
}
