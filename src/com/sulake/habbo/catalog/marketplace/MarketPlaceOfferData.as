package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2151:int;
      
      private var var_1979:String;
      
      private var var_1590:int;
      
      private var var_2149:int;
      
      private var var_2150:int;
      
      private var var_375:int;
      
      private var var_2148:int = -1;
      
      private var var_1589:int;
      
      private var var_43:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2151 = param3;
         this.var_1979 = param4;
         this.var_1590 = param5;
         this.var_375 = param6;
         this.var_2149 = param7;
         this.var_1589 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
            this.var_43 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2149;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_43 != null)
         {
            this.var_43.dispose();
         }
         this.var_43 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2150 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2150;
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2148;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2148 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1590 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1589;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1589 = param1;
      }
   }
}
