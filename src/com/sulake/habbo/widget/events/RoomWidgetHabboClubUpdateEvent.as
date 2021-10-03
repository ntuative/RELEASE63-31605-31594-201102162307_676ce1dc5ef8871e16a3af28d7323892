package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_266:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2652:int = 0;
      
      private var var_2655:int = 0;
      
      private var var_2654:int = 0;
      
      private var var_2653:Boolean = false;
      
      private var var_2076:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_266,param6,param7);
         this.var_2652 = param1;
         this.var_2655 = param2;
         this.var_2654 = param3;
         this.var_2653 = param4;
         this.var_2076 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2652;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2655;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2654;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2653;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2076;
      }
   }
}
