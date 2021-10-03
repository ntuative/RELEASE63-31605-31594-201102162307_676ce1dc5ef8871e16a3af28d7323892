package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2487:Number;
      
      private var var_1863:Number;
      
      private var var_925:Number;
      
      private var var_924:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2487 = param1;
         this.var_1863 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_925 = param1;
         this.var_924 = 0;
      }
      
      public function update() : void
      {
         this.var_925 += this.var_1863;
         this.var_924 += this.var_925;
         if(this.var_924 > 0)
         {
            this.var_924 = 0;
            this.var_925 = this.var_2487 * -1 * this.var_925;
         }
      }
      
      public function get location() : Number
      {
         return this.var_924;
      }
   }
}
