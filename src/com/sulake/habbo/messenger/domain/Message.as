package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_867:int = 1;
      
      public static const const_640:int = 2;
      
      public static const const_766:int = 3;
      
      public static const const_1035:int = 4;
      
      public static const const_705:int = 5;
      
      public static const const_980:int = 6;
       
      
      private var _type:int;
      
      private var var_1108:int;
      
      private var var_2212:String;
      
      private var var_2714:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1108 = param2;
         this.var_2212 = param3;
         this.var_2714 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2212;
      }
      
      public function get time() : String
      {
         return this.var_2714;
      }
      
      public function get senderId() : int
      {
         return this.var_1108;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
