package com.sulake.habbo.avatar
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarImageBodyPartContainer
   {
       
      
      private var var_43:BitmapData;
      
      private var var_637:Point;
      
      private var _offset:Point;
      
      public function AvatarImageBodyPartContainer(param1:BitmapData, param2:Point)
      {
         this._offset = new Point(0,0);
         super();
         this.var_43 = param1;
         this.var_637 = param2;
         this.cleanPoints();
      }
      
      public function dispose() : void
      {
         if(this.var_43)
         {
            this.var_43.dispose();
         }
         this.var_43 = null;
         this.var_637 = null;
         this._offset = null;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function setRegPoint(param1:Point) : void
      {
         this.var_637 = param1;
         this.cleanPoints();
      }
      
      public function get regPoint() : Point
      {
         return this.var_637.add(this._offset);
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
         this.cleanPoints();
      }
      
      private function cleanPoints() : void
      {
         this.var_637.x = int(this.var_637.x);
         this.var_637.y = int(this.var_637.y);
         this._offset.x = int(this._offset.x);
         this._offset.y = int(this._offset.y);
      }
   }
}
