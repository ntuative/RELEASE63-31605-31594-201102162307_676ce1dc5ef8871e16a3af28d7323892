package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_900:int = 20;
      
      private static const const_593:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_292:Array;
      
      private var var_716:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_292 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_716)
            {
               this.var_716 = true;
               this.var_292 = new Array();
               this.var_292.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_716)
            {
               this.var_716 = false;
               this.var_292 = new Array();
               this.var_292.push(const_900);
               this.var_292.push(const_593 + param1);
               this.var_292.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
