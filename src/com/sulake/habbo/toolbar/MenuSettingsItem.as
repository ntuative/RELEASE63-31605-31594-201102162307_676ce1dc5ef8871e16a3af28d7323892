package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2194:String;
      
      private var var_2286:Array;
      
      private var var_2287:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2194 = param1;
         this.var_2286 = param2;
         this.var_2287 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2194;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2286;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2287;
      }
   }
}
