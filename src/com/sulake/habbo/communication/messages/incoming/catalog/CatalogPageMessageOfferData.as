package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1545:String;
      
      private var var_1024:int;
      
      private var var_1025:int;
      
      private var var_1546:int;
      
      private var var_1062:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1545 = param1.readString();
         this.var_1024 = param1.readInteger();
         this.var_1025 = param1.readInteger();
         this.var_1546 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1062 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1062.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1545;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1024;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1025;
      }
      
      public function get products() : Array
      {
         return this.var_1062;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1546;
      }
   }
}
