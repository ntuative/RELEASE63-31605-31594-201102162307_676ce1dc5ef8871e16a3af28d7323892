package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1622:int;
      
      private var _name:String;
      
      private var var_1342:int;
      
      private var var_2473:int;
      
      private var var_2045:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_544:String;
      
      private var var_2470:int;
      
      private var var_2471:int;
      
      private var var_2472:int;
      
      private var var_2065:int;
      
      private var var_2043:int;
      
      private var _ownerName:String;
      
      private var var_467:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1622;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1342;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2473;
      }
      
      public function get experience() : int
      {
         return this.var_2045;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2470;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2471;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2472;
      }
      
      public function get respect() : int
      {
         return this.var_2065;
      }
      
      public function get ownerId() : int
      {
         return this.var_2043;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_467;
      }
      
      public function flush() : Boolean
      {
         this.var_1622 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1622 = param1.readInteger();
         this._name = param1.readString();
         this.var_1342 = param1.readInteger();
         this.var_2473 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_2470 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2472 = param1.readInteger();
         this.var_544 = param1.readString();
         this.var_2065 = param1.readInteger();
         this.var_2043 = param1.readInteger();
         this.var_467 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
