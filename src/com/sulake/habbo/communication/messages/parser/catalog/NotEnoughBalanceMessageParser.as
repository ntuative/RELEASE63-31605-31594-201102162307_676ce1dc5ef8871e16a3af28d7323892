package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1624:int = 0;
      
      private var var_1625:int = 0;
      
      private var var_1546:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1624;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1625;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1546;
      }
      
      public function flush() : Boolean
      {
         this.var_1624 = 0;
         this.var_1625 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1624 = param1.readInteger();
         this.var_1625 = param1.readInteger();
         this.var_1546 = param1.readInteger();
         return true;
      }
   }
}
