package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_929:PetData;
      
      private var var_2351:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_929 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_929 = new PetData(param1);
         this.var_2351 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return this.var_929;
      }
      
      public function get purchased() : Boolean
      {
         return this.var_2351;
      }
   }
}
