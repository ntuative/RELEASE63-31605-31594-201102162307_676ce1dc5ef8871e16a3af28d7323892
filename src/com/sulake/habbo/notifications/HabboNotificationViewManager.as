package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class HabboNotificationViewManager implements IUpdateReceiver
   {
      
      private static const const_942:int = 32;
      
      private static const const_1304:int = 4;
       
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2526:Map;
      
      private var var_435:Map;
      
      private var var_180:IHabboToolbar;
      
      private var _disposed:Boolean = false;
      
      private var var_219:Array;
      
      public function HabboNotificationViewManager(param1:IAssetLibrary, param2:IHabboWindowManager, param3:Map, param4:Map, param5:IHabboToolbar)
      {
         super();
         this._assetLibrary = param1;
         this._windowManager = param2;
         this.var_2526 = param3;
         this.var_435 = param4;
         this.var_180 = param5;
         this.var_219 = new Array();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_219)
         {
            _loc2_.replaceIcon(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = this.var_219.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            (this.var_219.pop() as HabboNotificationItemView).dispose();
            _loc2_++;
         }
         this._disposed = true;
      }
      
      public function showItem(param1:HabboNotificationItem) : Boolean
      {
         if(!this.isSpaceAvailable())
         {
            return false;
         }
         var _loc2_:HabboNotificationItemView = new HabboNotificationItemView(this._assetLibrary.getAssetByName("layout_notification_xml"),this._windowManager,this.var_2526,this.var_435,this.var_180,param1);
         _loc2_.reposition(this.getNextAvailableVerticalPosition());
         this.var_219.push(_loc2_);
         this.var_219.sortOn("verticalPosition",Array.NUMERIC);
         return true;
      }
      
      public function isSpaceAvailable() : Boolean
      {
         return this.getNextAvailableVerticalPosition() + HabboNotificationItemView.const_613 < 540;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.var_219.length)
         {
            (this.var_219[_loc2_] as HabboNotificationItemView).update(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_219.length)
         {
            _loc3_ = this.var_219[_loc2_] as HabboNotificationItemView;
            if(_loc3_.ready)
            {
               _loc3_.dispose();
               this.var_219.splice(_loc2_,1);
               _loc2_--;
            }
            _loc2_++;
         }
      }
      
      private function getNextAvailableVerticalPosition() : int
      {
         var _loc3_:* = null;
         if(this.var_219.length == 0)
         {
            return const_942;
         }
         var _loc1_:int = const_942;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_219.length)
         {
            _loc3_ = this.var_219[_loc2_] as HabboNotificationItemView;
            if(_loc1_ + HabboNotificationItemView.const_613 < _loc3_.verticalPosition)
            {
               return _loc1_;
            }
            _loc1_ = _loc3_.verticalPosition + HabboNotificationItemView.const_613 + const_1304;
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
