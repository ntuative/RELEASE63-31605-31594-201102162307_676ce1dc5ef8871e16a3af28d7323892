package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2670:Boolean;
      
      private var var_2075:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         this.var_2670 = Boolean(parseInt(param1.@club));
         this.var_2075 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get method_12() : Boolean
      {
         return this.var_2670;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2075;
      }
   }
}
