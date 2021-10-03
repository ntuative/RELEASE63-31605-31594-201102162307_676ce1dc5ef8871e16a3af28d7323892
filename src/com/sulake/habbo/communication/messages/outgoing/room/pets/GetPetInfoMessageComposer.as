package com.sulake.habbo.communication.messages.outgoing.room.pets
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetPetInfoMessageComposer implements IMessageComposer
   {
       
      
      private var var_1622:int;
      
      public function GetPetInfoMessageComposer(param1:int)
      {
         super();
         this.var_1622 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1622];
      }
      
      public function dispose() : void
      {
      }
   }
}
