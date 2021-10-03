package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1351:int = 2;
      
      private static const const_1352:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_292:Array;
      
      private var var_1213:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_292 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1351)
         {
            this.var_292 = new Array();
            this.var_292.push(const_1352);
            this.var_1213 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1213 > 0)
         {
            --this.var_1213;
         }
         if(this.var_1213 == 0)
         {
            if(this.var_292.length > 0)
            {
               super.setAnimation(this.var_292.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
