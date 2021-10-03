package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_160:Number = 0;
      
      private var var_161:Number = 0;
      
      private var var_2361:Number = 0;
      
      private var var_2362:Number = 0;
      
      private var var_2363:Number = 0;
      
      private var var_2360:Number = 0;
      
      private var var_231:int = 0;
      
      private var var_2364:int = 0;
      
      private var var_314:Array;
      
      private var var_2359:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_314 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_160 = param3;
         this.var_161 = param4;
         this.var_2361 = param5;
         this.var_231 = param6;
         this.var_2364 = param7;
         this.var_2362 = param8;
         this.var_2363 = param9;
         this.var_2360 = param10;
         this.var_2359 = param11;
         this.var_314 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_160;
      }
      
      public function get z() : Number
      {
         return this.var_161;
      }
      
      public function get localZ() : Number
      {
         return this.var_2361;
      }
      
      public function get targetX() : Number
      {
         return this.var_2362;
      }
      
      public function get targetY() : Number
      {
         return this.var_2363;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2360;
      }
      
      public function get dir() : int
      {
         return this.var_231;
      }
      
      public function get dirHead() : int
      {
         return this.var_2364;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2359;
      }
      
      public function get actions() : Array
      {
         return this.var_314.slice();
      }
   }
}
