package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_900:int = 20;
      
      private static const const_593:int = 10;
      
      private static const const_1227:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_292:Array;
      
      private var var_716:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_292 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_716)
            {
               this.var_716 = true;
               this.var_292 = new Array();
               this.var_292.push(const_1227);
               this.var_292.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_593)
         {
            if(this.var_716)
            {
               this.var_716 = false;
               this.var_292 = new Array();
               if(_direction == 2)
               {
                  this.var_292.push(const_900 + 5 - param1);
                  this.var_292.push(const_593 + 5 - param1);
               }
               else
               {
                  this.var_292.push(const_900 + param1);
                  this.var_292.push(const_593 + param1);
               }
               this.var_292.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
