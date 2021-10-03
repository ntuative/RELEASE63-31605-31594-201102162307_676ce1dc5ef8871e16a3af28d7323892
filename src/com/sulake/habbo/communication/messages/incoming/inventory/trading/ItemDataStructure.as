package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1994:int;
      
      private var var_1412:String;
      
      private var var_2626:int;
      
      private var var_2623:int;
      
      private var _category:int;
      
      private var var_1979:String;
      
      private var var_1358:int;
      
      private var var_2628:int;
      
      private var var_2624:int;
      
      private var var_2625:int;
      
      private var var_2622:int;
      
      private var var_2627:Boolean;
      
      private var var_2805:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_1994 = param1;
         this.var_1412 = param2;
         this.var_2626 = param3;
         this.var_2623 = param4;
         this._category = param5;
         this.var_1979 = param6;
         this.var_1358 = param7;
         this.var_2628 = param8;
         this.var_2624 = param9;
         this.var_2625 = param10;
         this.var_2622 = param11;
         this.var_2627 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_1994;
      }
      
      public function get itemType() : String
      {
         return this.var_1412;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2626;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2623;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1979;
      }
      
      public function get extra() : int
      {
         return this.var_1358;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2628;
      }
      
      public function get creationDay() : int
      {
         return this.var_2624;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2625;
      }
      
      public function get creationYear() : int
      {
         return this.var_2622;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2627;
      }
      
      public function get songID() : int
      {
         return this.var_1358;
      }
   }
}
