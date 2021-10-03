package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_943:int = 3;
       
      
      private var var_2561:int = -1;
      
      private var var_2553:int = -2;
      
      private var var_355:Vector3d = null;
      
      private var var_415:Vector3d = null;
      
      private var var_2552:Boolean = false;
      
      private var var_2560:Boolean = false;
      
      private var var_2556:Boolean = false;
      
      private var var_2557:Boolean = false;
      
      private var var_2554:int = 0;
      
      private var var_2558:int = 0;
      
      private var var_2555:int = 0;
      
      private var var_2559:int = 0;
      
      private var var_1421:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_415;
      }
      
      public function get targetId() : int
      {
         return this.var_2561;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2553;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2552;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2560;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2556;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2557;
      }
      
      public function get screenWd() : int
      {
         return this.var_2554;
      }
      
      public function get screenHt() : int
      {
         return this.var_2558;
      }
      
      public function get roomWd() : int
      {
         return this.var_2555;
      }
      
      public function get roomHt() : int
      {
         return this.var_2559;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2561 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2553 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2552 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2560 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2556 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2557 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2554 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2558 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2555 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2559 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_355 == null)
         {
            this.var_355 = new Vector3d();
         }
         if(this.var_355.x != param1.x || this.var_355.y != param1.y || this.var_355.z != param1.z)
         {
            this.var_355.assign(param1);
            this.var_1421 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_355 = null;
         this.var_415 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_415 != null)
         {
            return;
         }
         this.var_415 = new Vector3d();
         this.var_415.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_355 != null && this.var_415 != null)
         {
            ++this.var_1421;
            _loc4_ = Vector3d.dif(this.var_355,this.var_415);
            if(_loc4_.length <= param2)
            {
               this.var_415 = this.var_355;
               this.var_355 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_943 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1421 <= const_943)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_415 = Vector3d.sum(this.var_415,_loc4_);
            }
         }
      }
   }
}
