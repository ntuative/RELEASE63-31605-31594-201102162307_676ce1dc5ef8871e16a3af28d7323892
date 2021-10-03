package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SellablePetBreedsParser implements IMessageParser
   {
       
      
      private var var_1029:int = 0;
      
      private var var_1166:Array;
      
      public function SellablePetBreedsParser()
      {
         this.var_1166 = [];
         super();
      }
      
      public function get petType() : int
      {
         return this.var_1029;
      }
      
      public function get sellableBreeds() : Array
      {
         return this.var_1166.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1029 = 0;
         this.var_1166 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1029 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1166.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1166.sort(Array.NUMERIC);
         return true;
      }
   }
}
