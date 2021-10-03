package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1496:String;
      
      private var var_1590:int;
      
      private var var_2596:Boolean;
      
      private var var_2595:Boolean;
      
      private var var_2597:int;
      
      private var var_2598:int;
      
      private var var_2592:int;
      
      private var var_2593:int;
      
      private var var_2594:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1496 = param1.readString();
         this.var_1590 = param1.readInteger();
         this.var_2596 = param1.readBoolean();
         this.var_2595 = param1.readBoolean();
         this.var_2597 = param1.readInteger();
         this.var_2598 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_2593 = param1.readInteger();
         this.var_2594 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1496;
      }
      
      public function get price() : int
      {
         return this.var_1590;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2596;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2595;
      }
      
      public function get periods() : int
      {
         return this.var_2597;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2598;
      }
      
      public function get year() : int
      {
         return this.var_2592;
      }
      
      public function get month() : int
      {
         return this.var_2593;
      }
      
      public function get day() : int
      {
         return this.var_2594;
      }
   }
}
