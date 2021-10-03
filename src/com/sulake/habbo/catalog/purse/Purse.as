package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_196:int = 0;
       
      
      private var var_2273:int = 0;
      
      private var var_1395:Dictionary;
      
      private var var_1794:int = 0;
      
      private var var_1793:int = 0;
      
      private var var_2467:Boolean = false;
      
      private var var_2468:int = 0;
      
      private var var_2466:int = 0;
      
      public function Purse()
      {
         this.var_1395 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2273;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2273 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1794;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1794 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1793;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1793 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1794 > 0 || this.var_1793 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2467;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2467 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2468;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2468 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2466;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2466 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1395;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1395 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1395[param1];
      }
   }
}
