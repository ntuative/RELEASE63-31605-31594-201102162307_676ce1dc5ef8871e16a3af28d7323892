package com.sulake.habbo.communication.messages.incoming.room.furniture
{
   public class RoomDimmerPresetsMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _type:int = 0;
      
      private var _color:uint = 0;
      
      private var var_1614:uint = 0;
      
      private var var_171:Boolean = false;
      
      public function RoomDimmerPresetsMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_171 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_171)
         {
            this._type = param1;
         }
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         if(!this.var_171)
         {
            this._color = param1;
         }
      }
      
      public function get light() : int
      {
         return this.var_1614;
      }
      
      public function set light(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_1614 = param1;
         }
      }
   }
}
