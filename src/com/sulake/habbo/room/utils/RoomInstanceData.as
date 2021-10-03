package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_741:TileHeightMap = null;
      
      private var var_1140:LegacyWallGeometry = null;
      
      private var var_1139:RoomCamera = null;
      
      private var var_739:SelectedRoomObjectData = null;
      
      private var var_740:SelectedRoomObjectData = null;
      
      private var var_2479:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1140 = new LegacyWallGeometry();
         this.var_1139 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_741;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_741 != null)
         {
            this.var_741.dispose();
         }
         this.var_741 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1140;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1139;
      }
      
      public function get worldType() : String
      {
         return this.var_2479;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2479 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_739;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_739 != null)
         {
            this.var_739.dispose();
         }
         this.var_739 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_740;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_740 != null)
         {
            this.var_740.dispose();
         }
         this.var_740 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_741 != null)
         {
            this.var_741.dispose();
            this.var_741 = null;
         }
         if(this.var_1140 != null)
         {
            this.var_1140.dispose();
            this.var_1140 = null;
         }
         if(this.var_1139 != null)
         {
            this.var_1139.dispose();
            this.var_1139 = null;
         }
         if(this.var_739 != null)
         {
            this.var_739.dispose();
            this.var_739 = null;
         }
         if(this.var_740 != null)
         {
            this.var_740.dispose();
            this.var_740 = null;
         }
      }
   }
}
