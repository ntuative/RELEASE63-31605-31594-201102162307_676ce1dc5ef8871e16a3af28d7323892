package com.sulake.habbo.ui
{
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarInfoEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import flash.events.Event;
   
   public class AvatarInfoWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var _disposed:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function AvatarInfoWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._container = null;
            this._disposed = true;
         }
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_100;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetRoomObjectMessage.const_628];
      }
      
      public function getProcessedEvents() : Array
      {
         return [];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = false;
         if(!param1)
         {
            return null;
         }
         switch(param1.type)
         {
            case RoomWidgetRoomObjectMessage.const_628:
               _loc2_ = this._container.sessionDataManager.userId;
               _loc3_ = this._container.sessionDataManager.userName;
               _loc4_ = !this._container.habboHelp.hasChangedName();
               return new RoomWidgetAvatarInfoEvent(_loc2_,_loc3_,_loc4_);
            default:
               return null;
         }
      }
      
      public function processEvent(param1:Event) : void
      {
      }
      
      public function update() : void
      {
      }
   }
}
