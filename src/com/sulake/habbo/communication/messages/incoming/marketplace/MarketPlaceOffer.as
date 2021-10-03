package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2151:int;
      
      private var var_1979:String;
      
      private var var_1590:int;
      
      private var var_375:int;
      
      private var var_2148:int = -1;
      
      private var var_2149:int;
      
      private var var_1589:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2151 = param3;
         this.var_1979 = param4;
         this.var_1590 = param5;
         this.var_375 = param6;
         this.var_2148 = param7;
         this.var_2149 = param8;
         this.var_1589 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2151;
      }
      
      public function get stuffData() : String
      {
         return this.var_1979;
      }
      
      public function get price() : int
      {
         return this.var_1590;
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2148;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2149;
      }
      
      public function get offerCount() : int
      {
         return this.var_1589;
      }
   }
}
