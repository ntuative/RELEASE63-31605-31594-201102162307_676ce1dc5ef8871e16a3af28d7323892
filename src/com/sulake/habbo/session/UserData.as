package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_920:String = "";
      
      private var var_544:String = "";
      
      private var var_2216:String = "";
      
      private var var_2002:int;
      
      private var var_2000:int = 0;
      
      private var var_2217:String = "";
      
      private var var_2215:int = 0;
      
      private var var_2009:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2002;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2002 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_920;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_920 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_544 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2216;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2216 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2000;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2000 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2217;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2217 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2215;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2215 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2009;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2009 = param1;
      }
   }
}
