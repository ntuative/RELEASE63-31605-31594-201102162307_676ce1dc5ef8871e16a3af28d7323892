package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2566:int;
      
      private var var_2563:int;
      
      private var var_2565:int;
      
      private var var_2567:int;
      
      private var var_2564:int;
      
      private var var_2562:int;
      
      private var var_95:Array;
      
      private var var_225:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_95 = new Array();
         this.var_225 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2566 = param1.readInteger();
         this.var_2563 = param1.readInteger();
         this.var_2565 = param1.readInteger();
         this.var_2567 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_95.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_225.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2564 = param1.readInteger();
         this.var_2562 = param1.readInteger();
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2566;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2563;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2565;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2564;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2562;
      }
      
      public function get categories() : Array
      {
         return this.var_95;
      }
      
      public function get friends() : Array
      {
         return this.var_225;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2567;
      }
   }
}
