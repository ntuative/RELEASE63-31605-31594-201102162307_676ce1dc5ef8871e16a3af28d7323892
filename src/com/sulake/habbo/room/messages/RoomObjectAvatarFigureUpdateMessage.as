package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_544:String;
      
      private var var_2038:String;
      
      private var var_813:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_544 = param1;
         this.var_813 = param2;
         this.var_2038 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function get race() : String
      {
         return this.var_2038;
      }
      
      public function get gender() : String
      {
         return this.var_813;
      }
   }
}
