package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1256:Boolean;
      
      private var var_2107:int;
      
      private var var_1563:int;
      
      private var var_1564:int;
      
      private var var_2104:int;
      
      private var var_2109:int;
      
      private var var_2108:int;
      
      private var var_2106:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1256;
      }
      
      public function get commission() : int
      {
         return this.var_2107;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1563;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1564;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2109;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2104;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2108;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2106;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1256 = param1.readBoolean();
         this.var_2107 = param1.readInteger();
         this.var_1563 = param1.readInteger();
         this.var_1564 = param1.readInteger();
         this.var_2109 = param1.readInteger();
         this.var_2104 = param1.readInteger();
         this.var_2108 = param1.readInteger();
         this.var_2106 = param1.readInteger();
         return true;
      }
   }
}
