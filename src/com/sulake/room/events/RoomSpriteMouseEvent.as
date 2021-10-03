package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1795:String = "";
      
      private var var_1670:String = "";
      
      private var var_2392:String = "";
      
      private var var_2643:Number = 0;
      
      private var var_2642:Number = 0;
      
      private var var_2494:Number = 0;
      
      private var var_2491:Number = 0;
      
      private var var_2271:Boolean = false;
      
      private var var_2270:Boolean = false;
      
      private var var_2272:Boolean = false;
      
      private var var_2269:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1795 = param2;
         this.var_1670 = param3;
         this.var_2392 = param4;
         this.var_2643 = param5;
         this.var_2642 = param6;
         this.var_2494 = param7;
         this.var_2491 = param8;
         this.var_2271 = param9;
         this.var_2270 = param10;
         this.var_2272 = param11;
         this.var_2269 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1795;
      }
      
      public function get canvasId() : String
      {
         return this.var_1670;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2392;
      }
      
      public function get screenX() : Number
      {
         return this.var_2643;
      }
      
      public function get screenY() : Number
      {
         return this.var_2642;
      }
      
      public function get localX() : Number
      {
         return this.var_2494;
      }
      
      public function get localY() : Number
      {
         return this.var_2491;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2271;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2270;
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
