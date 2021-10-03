package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_250:String = "ROE_MOUSE_CLICK";
      
      public static const const_1792:String = "ROE_MOUSE_ENTER";
      
      public static const const_465:String = "ROE_MOUSE_MOVE";
      
      public static const const_1720:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1769:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_489:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1795:String = "";
      
      private var var_2270:Boolean;
      
      private var var_2271:Boolean;
      
      private var var_2272:Boolean;
      
      private var var_2269:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1795 = param2;
         this.var_2270 = param5;
         this.var_2271 = param6;
         this.var_2272 = param7;
         this.var_2269 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1795;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2270;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2271;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2272;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2269;
      }
   }
}
