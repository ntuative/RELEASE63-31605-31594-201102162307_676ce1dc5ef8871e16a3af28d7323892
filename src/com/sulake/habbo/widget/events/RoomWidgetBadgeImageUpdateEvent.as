package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_749:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2072:String;
      
      private var var_2073:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_749,param3,param4);
         this.var_2072 = param1;
         this.var_2073 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2072;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2073;
      }
   }
}
