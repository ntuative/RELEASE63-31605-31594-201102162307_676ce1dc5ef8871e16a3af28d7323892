package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_839:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_288:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_839);
         this.var_288 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_288;
      }
   }
}
