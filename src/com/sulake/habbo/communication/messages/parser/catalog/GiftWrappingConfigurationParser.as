package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2688:Boolean;
      
      private var var_2687:int;
      
      private var var_1686:Array;
      
      private var var_719:Array;
      
      private var var_718:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2688;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2687;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1686;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_719;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_718;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1686 = [];
         this.var_719 = [];
         this.var_718 = [];
         this.var_2688 = param1.readBoolean();
         this.var_2687 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1686.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_719.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_718.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
