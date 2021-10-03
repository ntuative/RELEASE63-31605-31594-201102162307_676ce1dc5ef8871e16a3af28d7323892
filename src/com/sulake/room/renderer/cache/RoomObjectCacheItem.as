package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_924:RoomObjectLocationCacheItem = null;
      
      private var var_193:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_924 = new RoomObjectLocationCacheItem(param1);
         this.var_193 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_924;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_193;
      }
      
      public function dispose() : void
      {
         if(this.var_924 != null)
         {
            this.var_924.dispose();
            this.var_924 = null;
         }
         if(this.var_193 != null)
         {
            this.var_193.dispose();
            this.var_193 = null;
         }
      }
   }
}
