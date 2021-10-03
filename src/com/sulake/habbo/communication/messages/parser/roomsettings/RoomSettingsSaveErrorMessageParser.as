package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1802:int = 1;
      
      public static const const_1755:int = 2;
      
      public static const const_1886:int = 3;
      
      public static const const_1805:int = 4;
      
      public static const const_1581:int = 5;
      
      public static const const_1790:int = 6;
      
      public static const const_1587:int = 7;
      
      public static const const_1627:int = 8;
      
      public static const const_1785:int = 9;
      
      public static const const_1414:int = 10;
      
      public static const const_1409:int = 11;
      
      public static const const_1585:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1515:int;
      
      private var var_1428:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1515 = param1.readInteger();
         this.var_1428 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1515;
      }
      
      public function get info() : String
      {
         return this.var_1428;
      }
   }
}
