package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_869:String = "";
      
      public static const const_510:int = 0;
      
      public static const const_562:int = 255;
      
      public static const const_630:Boolean = false;
      
      public static const const_436:int = 0;
      
      public static const const_484:int = 0;
      
      public static const const_534:int = 0;
      
      public static const const_1170:int = 1;
      
      public static const const_1018:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2369:String = "";
      
      private var var_1690:int = 0;
      
      private var var_2153:int = 255;
      
      private var var_2427:Boolean = false;
      
      private var var_2426:int = 0;
      
      private var var_2425:int = 0;
      
      private var var_2428:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2369 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2369;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1690 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1690;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2153 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2153;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2427 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2427;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2426 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2426;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2425 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2425;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2428 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2428;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
