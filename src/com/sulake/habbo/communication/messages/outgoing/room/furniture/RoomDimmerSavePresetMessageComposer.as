package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2434:int;
      
      private var var_2435:int;
      
      private var var_2630:String;
      
      private var var_2632:int;
      
      private var var_2631:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2434 = param1;
         this.var_2435 = param2;
         this.var_2630 = param3;
         this.var_2632 = param4;
         this.var_2631 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2434,this.var_2435,this.var_2630,this.var_2632,int(this.var_2631)];
      }
      
      public function dispose() : void
      {
      }
   }
}
