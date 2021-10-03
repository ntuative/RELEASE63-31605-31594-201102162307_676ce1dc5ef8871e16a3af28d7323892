package com.sulake.habbo.widget.events
{
   public class RoomWidgetFrameUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_399:String = "RWUE_EVENT_FRAME";
       
      
      public function RoomWidgetFrameUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_399,param1,param2);
      }
   }
}
