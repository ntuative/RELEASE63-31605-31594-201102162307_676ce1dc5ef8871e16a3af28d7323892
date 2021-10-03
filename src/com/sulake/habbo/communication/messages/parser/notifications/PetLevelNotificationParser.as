package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1622:int;
      
      private var var_2574:String;
      
      private var var_1342:int;
      
      private var var_1029:int;
      
      private var var_1565:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1622 = param1.readInteger();
         this.var_2574 = param1.readString();
         this.var_1342 = param1.readInteger();
         this.var_1029 = param1.readInteger();
         this.var_1565 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1622;
      }
      
      public function get petName() : String
      {
         return this.var_2574;
      }
      
      public function get level() : int
      {
         return this.var_1342;
      }
      
      public function get petType() : int
      {
         return this.var_1029;
      }
      
      public function get breed() : int
      {
         return this.var_1565;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
