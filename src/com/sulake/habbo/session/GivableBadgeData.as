package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_288:int;
      
      private var var_2174:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_288 = param1;
         this.var_2174 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_288;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2174;
      }
   }
}
