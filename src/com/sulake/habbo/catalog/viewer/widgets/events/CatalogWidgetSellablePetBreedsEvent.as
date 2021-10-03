package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetSellablePetBreedsEvent extends Event
   {
       
      
      private var var_1029:int;
      
      private var var_1166:Array;
      
      public function CatalogWidgetSellablePetBreedsEvent(param1:int, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super(WidgetEvent.CWE_SELLABLE_PET_BREEDS,param3,param4);
         this.var_1029 = param1;
         this.var_1166 = param2;
      }
      
      public function get petType() : int
      {
         return this.var_1029;
      }
      
      public function get sellableBreeds() : Array
      {
         if(this.var_1166 != null)
         {
            return this.var_1166.slice();
         }
         return [];
      }
   }
}
