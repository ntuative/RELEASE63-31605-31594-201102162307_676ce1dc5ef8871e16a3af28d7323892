package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_83:String = "i";
      
      public static const const_89:String = "s";
      
      public static const const_268:String = "e";
       
      
      private var var_1651:String;
      
      private var var_2465:int;
      
      private var var_1312:String;
      
      private var var_1311:int;
      
      private var var_1654:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1651 = param1.readString();
         this.var_2465 = param1.readInteger();
         this.var_1312 = param1.readString();
         this.var_1311 = param1.readInteger();
         this.var_1654 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1651;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2465;
      }
      
      public function get extraParam() : String
      {
         return this.var_1312;
      }
      
      public function get productCount() : int
      {
         return this.var_1311;
      }
      
      public function get expiration() : int
      {
         return this.var_1654;
      }
   }
}
