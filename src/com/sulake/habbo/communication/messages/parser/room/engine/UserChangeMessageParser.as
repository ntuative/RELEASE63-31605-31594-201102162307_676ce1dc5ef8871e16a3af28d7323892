package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_544:String;
      
      private var var_920:String;
      
      private var var_1783:String;
      
      private var var_2002:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function get sex() : String
      {
         return this.var_920;
      }
      
      public function get customInfo() : String
      {
         return this.var_1783;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2002;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_544 = "";
         this.var_920 = "";
         this.var_1783 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_544 = param1.readString();
         this.var_920 = param1.readString();
         this.var_1783 = param1.readString();
         this.var_2002 = param1.readInteger();
         if(this.var_920)
         {
            this.var_920 = this.var_920.toUpperCase();
         }
         return true;
      }
   }
}
