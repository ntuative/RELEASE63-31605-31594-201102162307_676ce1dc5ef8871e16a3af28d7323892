package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_500:int = -1;
      
      public static const const_1076:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_160:int = 0;
      
      private var var_2166:int = 1;
      
      private var var_837:int = 1;
      
      private var var_1593:int = 1;
      
      private var var_2165:int = -1;
      
      private var var_2168:int = 0;
      
      private var var_2167:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_160 = param3;
         this.var_2167 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2166 = param4;
         if(param5 < 0)
         {
            param5 = const_500;
         }
         this.var_837 = param5;
         this.var_1593 = param5;
         if(param7 >= 0)
         {
            this.var_2165 = param7;
            this.var_2168 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_160;
      }
      
      public function get repeats() : int
      {
         return this.var_2166;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_837;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2167;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_837 < 0)
         {
            return const_500;
         }
         return this.var_1593;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_837 > 0 && param1 > this.var_837)
         {
            param1 = this.var_837;
         }
         this.var_1593 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2165;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2168;
      }
   }
}
