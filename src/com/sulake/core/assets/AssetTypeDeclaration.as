package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2310:String;
      
      private var var_2311:Class;
      
      private var var_2309:Class;
      
      private var var_1696:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2310 = param1;
         this.var_2311 = param2;
         this.var_2309 = param3;
         if(rest == null)
         {
            this.var_1696 = new Array();
         }
         else
         {
            this.var_1696 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2310;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2311;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2309;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1696;
      }
   }
}
