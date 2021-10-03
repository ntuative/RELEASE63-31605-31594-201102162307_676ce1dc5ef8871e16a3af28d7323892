package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_544:String;
      
      private var var_920:String;
      
      private var var_2249:String;
      
      private var var_1771:String;
      
      private var var_2246:int;
      
      private var var_2250:String;
      
      private var var_2245:int;
      
      private var var_2248:int;
      
      private var var_2247:int;
      
      private var _respectLeft:int;
      
      private var var_771:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_544 = param1.readString();
         this.var_920 = param1.readString();
         this.var_2249 = param1.readString();
         this.var_1771 = param1.readString();
         this.var_2246 = param1.readInteger();
         this.var_2250 = param1.readString();
         this.var_2245 = param1.readInteger();
         this.var_2248 = param1.readInteger();
         this.var_2247 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_771 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function get sex() : String
      {
         return this.var_920;
      }
      
      public function get customData() : String
      {
         return this.var_2249;
      }
      
      public function get realName() : String
      {
         return this.var_1771;
      }
      
      public function get tickets() : int
      {
         return this.var_2246;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2250;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2245;
      }
      
      public function get directMail() : int
      {
         return this.var_2248;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2247;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_771;
      }
   }
}
