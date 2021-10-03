package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1405:String = "pricing_model_unknown";
      
      public static const const_427:String = "pricing_model_single";
      
      public static const const_470:String = "pricing_model_multi";
      
      public static const const_428:String = "pricing_model_bundle";
      
      public static const const_1443:String = "price_type_none";
      
      public static const const_737:String = "price_type_credits";
      
      public static const const_1178:String = "price_type_activitypoints";
      
      public static const const_1199:String = "price_type_credits_and_activitypoints";
       
      
      private var var_667:String;
      
      private var var_1026:String;
      
      private var _offerId:int;
      
      private var var_1545:String;
      
      private var var_1024:int;
      
      private var var_1025:int;
      
      private var var_1546:int;
      
      private var var_395:ICatalogPage;
      
      private var var_668:IProductContainer;
      
      private var var_2084:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1545 = param1.localizationId;
         this.var_1024 = param1.priceInCredits;
         this.var_1025 = param1.priceInActivityPoints;
         this.var_1546 = param1.activityPointType;
         this.var_395 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.method_5();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_395;
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
      
      public function get activityPointType() : int
      {
         return this.var_1546;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_668;
      }
      
      public function get pricingModel() : String
      {
         return this.var_667;
      }
      
      public function get priceType() : String
      {
         return this.var_1026;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2084;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2084 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1545 = "";
         this.var_1024 = 0;
         this.var_1025 = 0;
         this.var_1546 = 0;
         this.var_395 = null;
         if(this.var_668 != null)
         {
            this.var_668.dispose();
            this.var_668 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_667)
         {
            case const_427:
               this.var_668 = new SingleProductContainer(this,param1);
               break;
            case const_470:
               this.var_668 = new MultiProductContainer(this,param1);
               break;
            case const_428:
               this.var_668 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_667);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_667 = const_427;
            }
            else
            {
               this.var_667 = const_470;
            }
         }
         else if(param1.length > 1)
         {
            this.var_667 = const_428;
         }
         else
         {
            this.var_667 = const_1405;
         }
      }
      
      private function method_5() : void
      {
         if(this.var_1024 > 0 && this.var_1025 > 0)
         {
            this.var_1026 = const_1199;
         }
         else if(this.var_1024 > 0)
         {
            this.var_1026 = const_737;
         }
         else if(this.var_1025 > 0)
         {
            this.var_1026 = const_1178;
         }
         else
         {
            this.var_1026 = const_1443;
         }
      }
   }
}
