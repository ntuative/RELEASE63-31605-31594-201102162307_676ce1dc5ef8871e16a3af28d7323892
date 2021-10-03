package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2024:int;
      
      private var var_1412:String;
      
      private var _objId:int;
      
      private var var_1827:int;
      
      private var _category:int;
      
      private var var_1979:String;
      
      private var var_2023:Boolean;
      
      private var var_2026:Boolean;
      
      private var var_2022:Boolean;
      
      private var var_2025:Boolean;
      
      private var var_2027:int;
      
      private var var_1358:int;
      
      private var var_1518:String = "";
      
      private var var_2327:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2024 = param1;
         this.var_1412 = param2;
         this._objId = param3;
         this.var_1827 = param4;
         this._category = param5;
         this.var_1979 = param6;
         this.var_2023 = param7;
         this.var_2026 = param8;
         this.var_2022 = param9;
         this.var_2025 = param10;
         this.var_2027 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1518 = param1;
         this.var_1358 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2024;
      }
      
      public function get itemType() : String
      {
         return this.var_1412;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1827;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1979;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2023;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2026;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2022;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2025;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2027;
      }
      
      public function get slotId() : String
      {
         return this.var_1518;
      }
      
      public function get songId() : int
      {
         return this.var_2327;
      }
      
      public function get extra() : int
      {
         return this.var_1358;
      }
   }
}
