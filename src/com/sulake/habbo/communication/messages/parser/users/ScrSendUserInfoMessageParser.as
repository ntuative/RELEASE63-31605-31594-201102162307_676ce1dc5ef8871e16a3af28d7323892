package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1719:int = 1;
      
      public static const const_1613:int = 2;
       
      
      private var var_898:String;
      
      private var var_2547:int;
      
      private var var_2551:int;
      
      private var var_2546:int;
      
      private var var_2544:int;
      
      private var var_2545:Boolean;
      
      private var var_2467:Boolean;
      
      private var var_2468:int;
      
      private var var_2466:int;
      
      private var var_2549:Boolean;
      
      private var var_2550:int;
      
      private var var_2548:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_898 = param1.readString();
         this.var_2547 = param1.readInteger();
         this.var_2551 = param1.readInteger();
         this.var_2546 = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this.var_2545 = param1.readBoolean();
         this.var_2467 = param1.readBoolean();
         this.var_2468 = param1.readInteger();
         this.var_2466 = param1.readInteger();
         this.var_2549 = param1.readBoolean();
         this.var_2550 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_898;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2547;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2551;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2546;
      }
      
      public function get responseType() : int
      {
         return this.var_2544;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2545;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2467;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2468;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2466;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2549;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2550;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2548;
      }
   }
}
