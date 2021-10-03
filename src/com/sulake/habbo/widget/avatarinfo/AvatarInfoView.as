package com.sulake.habbo.widget.avatarinfo
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarInfoView
   {
       
      
      private var _window:IWindowContainer;
      
      private var _widget:AvatarInfoWidget;
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var _allowNameChange:Boolean;
      
      public function AvatarInfoView(param1:AvatarInfoWidget, param2:int, param3:String, param4:Boolean = false)
      {
         super();
         this._widget = param1;
         this._userId = param2;
         this._userName = param3;
         this._allowNameChange = param4;
      }
      
      public function dispose() : void
      {
         this._widget = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function createWindow() : void
      {
         if(!this._widget || !this._widget.assets || !this._widget.windowManager)
         {
            return;
         }
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("avatar_info_widget") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         this._window = this._widget.windowManager.buildFromXML(_loc1_.content as XML,0) as IWindowContainer;
         if(!this._window)
         {
            return;
         }
         var _loc2_:IWindow = this._window.findChildByName("name");
         _loc2_.caption = this._userName;
         this.setImageAsset(this._window.findChildByName("pointer") as IBitmapWrapperWindow,"arrow_down_gray");
         if(!this._allowNameChange)
         {
            this._window.findChildByName("change_name_container").visible = false;
            this._window.findChildByName("border").height = 22;
            this._window.findChildByName("border").width = _loc2_.width + 16;
         }
         this._window.visible = false;
      }
      
      public function setImageAsset(param1:IBitmapWrapperWindow, param2:String) : void
      {
         if(!param1 || !this._widget || !this._widget.assets)
         {
            return;
         }
         var _loc3_:BitmapDataAsset = this._widget.assets.getAssetByName(param2) as BitmapDataAsset;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:BitmapData = _loc3_.content as BitmapData;
         if(!_loc4_)
         {
            return;
         }
         if(param1.bitmap)
         {
            param1.bitmap.dispose();
         }
         param1.bitmap = new BitmapData(param1.width,param1.height,true,0);
         param1.bitmap.draw(_loc4_);
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function show() : void
      {
         if(this._window != null)
         {
            this._window.visible = true;
            this._window.activate();
         }
      }
      
      public function set targetRect(param1:Rectangle) : void
      {
         var _loc5_:* = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = true;
         if(!this._window)
         {
            this.createWindow();
            _loc2_ = false;
         }
         if(!this._window)
         {
            return;
         }
         var _loc3_:Point = new Point(param1.left + param1.width / 2 - this._window.width / 2,param1.top - this._window.height + 25);
         var _loc4_:Number = Point.distance(this._window.rectangle.topLeft,_loc3_);
         if(_loc2_ && _loc4_ > 5)
         {
            _loc5_ = Point.interpolate(this._window.rectangle.topLeft,_loc3_,0.5);
            this._window.x = _loc5_.x;
            this._window.y = _loc5_.y;
         }
         else
         {
            this._window.x = _loc3_.x;
            this._window.y = _loc3_.y;
         }
         this.show();
      }
   }
}
