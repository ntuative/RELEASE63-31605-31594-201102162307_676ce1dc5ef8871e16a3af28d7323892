package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_997:String = "select_outfit";
       
      
      private var var_2483:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_997);
         this.var_2483 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2483;
      }
   }
}
