package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_830:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1772:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_830);
         this.var_1772 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1772;
      }
   }
}
