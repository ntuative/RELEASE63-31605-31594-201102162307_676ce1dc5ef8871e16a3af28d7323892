package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1502:String;
      
      private var var_2199:int;
      
      private var _password:String;
      
      private var var_1264:int;
      
      private var var_2204:int;
      
      private var var_804:Array;
      
      private var var_2203:Array;
      
      private var var_2196:Boolean;
      
      private var var_2197:Boolean;
      
      private var var_2200:Boolean;
      
      private var var_2198:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2196;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2196 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2197;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2197 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2200;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2200 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2198;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2198 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1502;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1502 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2199;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2199 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1264;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1264 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2204;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2204 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_804;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_804 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2203;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2203 = param1;
      }
   }
}
