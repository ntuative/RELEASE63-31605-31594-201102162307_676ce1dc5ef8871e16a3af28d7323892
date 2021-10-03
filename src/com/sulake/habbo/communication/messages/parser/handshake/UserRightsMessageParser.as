package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      private var var_1181:Boolean;
      
      private var var_960:Array = null;
      
      private var var_2076:int;
      
      private var var_1871:int;
      
      public function UserRightsMessageParser()
      {
         super();
         this.var_960 = [];
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Boolean = param1.readBoolean();
         if(_loc2_)
         {
            this.var_960 = [];
            _loc3_ = param1.readInteger();
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.var_960.push(param1.readString());
               _loc4_++;
            }
            this.var_1181 = false;
         }
         else
         {
            this.var_2076 = param1.readInteger();
            this.var_1871 = param1.readInteger();
            this.var_1181 = true;
         }
         return true;
      }
      
      public function get simpleSecurity() : Boolean
      {
         return this.var_1181;
      }
      
      public function get rights() : Array
      {
         return this.var_960.slice();
      }
      
      public function get clubLevel() : int
      {
         return this.var_2076;
      }
      
      public function get securityLevel() : int
      {
         return this.var_1871;
      }
   }
}
