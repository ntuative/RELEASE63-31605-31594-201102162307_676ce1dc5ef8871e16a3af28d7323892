package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1007:Boolean;
      
      private var var_2401:int;
      
      private var var_2397:String;
      
      private var var_372:int;
      
      private var var_2396:int;
      
      private var var_2400:String;
      
      private var var_2399:String;
      
      private var var_2398:String;
      
      private var var_804:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_804 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1007 = false;
            return;
         }
         this.var_1007 = true;
         this.var_2401 = int(_loc2_);
         this.var_2397 = param1.readString();
         this.var_372 = int(param1.readString());
         this.var_2396 = param1.readInteger();
         this.var_2400 = param1.readString();
         this.var_2399 = param1.readString();
         this.var_2398 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_804.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_804 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2401;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2397;
      }
      
      public function get flatId() : int
      {
         return this.var_372;
      }
      
      public function get eventType() : int
      {
         return this.var_2396;
      }
      
      public function get eventName() : String
      {
         return this.var_2400;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2399;
      }
      
      public function get creationTime() : String
      {
         return this.var_2398;
      }
      
      public function get tags() : Array
      {
         return this.var_804;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1007;
      }
   }
}
