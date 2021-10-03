package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1101:String = "M";
      
      public static const const_1637:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_161:Number = 0;
      
      private var var_231:int = 0;
      
      private var _name:String = "";
      
      private var var_2213:int = 0;
      
      private var var_920:String = "";
      
      private var var_544:String = "";
      
      private var var_2216:String = "";
      
      private var var_2002:int;
      
      private var var_2000:int = 0;
      
      private var var_2217:String = "";
      
      private var var_2215:int = 0;
      
      private var var_2009:int = 0;
      
      private var var_2214:String = "";
      
      private var var_171:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_171 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_171)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_160;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_160 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_161;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_161 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_231;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_231 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_171)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2213;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2213 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_920;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_920 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_544 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2216;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2216 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2002;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2002 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2000;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2000 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2217;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2217 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2215;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2215 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2009;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2009 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2214;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2214 = param1;
         }
      }
   }
}
