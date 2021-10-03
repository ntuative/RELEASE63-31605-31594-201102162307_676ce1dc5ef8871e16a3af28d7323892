package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1794:int = 0;
      
      private var var_1793:int = 0;
      
      private var var_2684:int = 0;
      
      private var var_2683:Boolean = false;
      
      private var var_2467:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1794 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1793 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2684 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2683 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2467 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1794;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1793;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2684;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2683;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2467;
      }
   }
}
