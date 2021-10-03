package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_660:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2369:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_660);
         this.var_2369 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2369;
      }
   }
}
