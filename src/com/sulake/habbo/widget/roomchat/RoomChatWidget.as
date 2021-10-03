package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatSelectAvatarMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class RoomChatWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_108:int = 18;
      
      private static const const_1254:int = 9;
      
      private static const const_915:int = 10;
      
      private static const const_588:int = 25;
      
      private static const const_1256:int = 25;
      
      private static const const_914:int = 4000;
      
      private static const const_1255:int = 6000;
      
      private static const const_1257:int = 3;
      
      private static const const_1253:int = 1;
      
      private static const const_589:int = 8;
      
      private static const const_410:int = 0;
      
      private static const const_913:int = (const_589 + const_410) * const_108 + const_108;
      
      private static const const_411:int = 9;
       
      
      private var var_1049:int = 0;
      
      private var var_853:int = 0;
      
      private var var_37:IWindowContainer;
      
      private var var_330:IItemListWindow;
      
      private var var_105:IWindowContainer;
      
      private var _itemList:Array;
      
      private var var_67:Array;
      
      private var var_235:Array;
      
      private var var_2208:int;
      
      private var var_2209:int = 0;
      
      private var var_698:Number = 1;
      
      private var var_2211:String;
      
      private var var_855:Number = 1;
      
      private var var_1620:Number = 0;
      
      private var var_697:Point;
      
      private var var_28:RoomChatHistoryViewer;
      
      private var var_854:Boolean = false;
      
      private var var_1621:Boolean = false;
      
      private var _component:Component = null;
      
      private var _disposed:Boolean = false;
      
      private var var_2210:int = 150;
      
      private var var_209:int = 171.0;
      
      private var var_856:int = 18;
      
      public function RoomChatWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:int, param6:Component)
      {
         this._itemList = new Array();
         this.var_67 = new Array();
         this.var_235 = new Array();
         this.var_697 = new Point();
         super(param1,param2,param3);
         this.var_2208 = param5;
         this.var_37 = param1.createWindow("chat_container","",HabboWindowType.const_57,HabboWindowStyle.const_31,HabboWindowParam.const_41,new Rectangle(0,0,200,this.var_209 + RoomChatHistoryPulldown.const_81),null,0) as IWindowContainer;
         this.var_37.background = true;
         this.var_37.color = 33554431;
         this.var_37.tags.push("room_widget_chat");
         this.var_330 = param1.createWindow("chat_contentlist","",HabboWindowType.const_1114,HabboWindowStyle.const_41,0 | 0,new Rectangle(0,0,200,this.var_209),null,0) as IItemListWindow;
         this.var_37.addChild(this.var_330);
         this.var_105 = param1.createWindow("chat_active_content","",HabboWindowType.const_57,HabboWindowStyle.const_41,HabboWindowParam.const_62,new Rectangle(0,0,200,this.var_209),null,0) as IWindowContainer;
         this.var_105.clipping = false;
         this.var_330.addListItem(this.var_105);
         this.var_28 = new RoomChatHistoryViewer(this,param1,this.var_37,param2);
         this.var_2211 = param4.getKey("site.url");
         this.var_2210 = int(param4.getKey("chat.history.item.max.count","150"));
         var _loc7_:Boolean = int(param4.getKey("chat.history.disabled","0")) == 1 ? true : false;
         if(this.var_28 != null)
         {
            this.var_28.disabled = _loc7_;
         }
         if(param6 != null)
         {
            this._component = param6;
            this._component.registerUpdateReceiver(this,1);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      override public function get method_1() : IWindow
      {
         return this.var_37;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         while(this.var_235.length > 0)
         {
            _loc1_ = this.var_235.shift();
         }
         this.var_28.dispose();
         this.var_28 = null;
         while(this._itemList.length > 0)
         {
            _loc1_ = this._itemList.shift();
            _loc1_.dispose();
         }
         while(this.var_67.length > 0)
         {
            _loc1_ = this.var_67.shift();
            _loc1_.dispose();
         }
         this.var_37.dispose();
         if(this._component != null)
         {
            this._component.removeUpdateReceiver(this);
            this._component = null;
         }
         super.dispose();
         this._disposed = true;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         if(getTimer() > this.var_1049 && this.var_1049 > 0)
         {
            this.var_1049 = -1;
            this.animationStart();
         }
         if(this.var_854)
         {
            _loc2_ = param1 / const_1256 * const_1257;
            if(_loc2_ + this.var_853 > this.var_856)
            {
               _loc2_ = this.var_856 - this.var_853;
            }
            if(_loc2_ > 0)
            {
               this.moveItemsUp(_loc2_);
               this.var_853 += _loc2_;
            }
            if(this.var_853 >= this.var_856)
            {
               this.var_856 = const_108;
               this.var_853 = 0;
               this.animationStop();
               this.processBuffer();
               this.var_1049 = getTimer() + const_914;
            }
         }
         if(this.var_28 != null)
         {
            this.var_28.update(param1);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChatUpdateEvent.const_790,this.onChatMessage);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_313,this.onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_653,this.onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_680,this.onRoomViewUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChatUpdateEvent.const_790,this.onChatMessage);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_313,this.onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_653,this.onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_680,this.onRoomViewUpdate);
      }
      
      private function onChatMessage(param1:RoomWidgetChatUpdateEvent) : void
      {
         var _loc2_:RoomChatItem = new RoomChatItem(this,windowManager,assets,this.getFreeItemId(),localizations,this.var_2211);
         _loc2_.define(param1);
         if(this.var_855 != 1)
         {
            _loc2_.senderX /= this.var_855;
         }
         _loc2_.senderX -= this.var_697.x;
         this.setChatItemLocHorizontal(_loc2_);
         this.var_67.push(_loc2_);
         this.processBuffer();
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         var _loc2_:Rectangle = param1.rect;
         if(param1.scale > 0)
         {
            if(this.var_1620 == 0)
            {
               this.var_1620 = param1.scale;
            }
            else
            {
               this.var_855 = param1.scale / this.var_1620;
            }
         }
         if(param1.positionDelta != null)
         {
            this.var_697.x += param1.positionDelta.x / this.var_855;
            this.var_697.y += param1.positionDelta.y / this.var_855;
         }
         if(param1.rect != null)
         {
            if(this.var_28 == null)
            {
               return;
            }
            this.var_37.width = _loc2_.width;
            this.var_37.height = this.var_209 + this.var_28.pulldownBarHeight;
            this.var_330.width = this.var_37.width - this.var_28.scrollbarWidth;
            this.var_330.height = this.var_209;
            this.var_330.x = this.var_37.x;
            this.var_330.y = this.var_37.y;
            this.var_105.width = this.var_37.width - this.var_28.scrollbarWidth;
            this.var_105.height = this.var_209;
            if(this.historyViewerActive())
            {
               this.reAlignItemsToHistoryContent();
            }
            this.var_28.containerResized(this.var_37.rectangle,true);
         }
         this.alignItems();
      }
      
      private function processBuffer() : void
      {
         if(this.var_854)
         {
            return;
         }
         if(this.var_67.length == 0)
         {
            return;
         }
         while(this.var_67.length > const_1253 || this.historyViewerActive() && this.var_67.length > 0)
         {
            this.activateItemFromBuffer();
         }
         var _loc1_:Boolean = false;
         if(this._itemList.length == 0)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = this.checkLastItemAllowsAdding(this.var_67[0]);
         }
         if(_loc1_)
         {
            this.activateItemFromBuffer();
            this.var_1049 = getTimer() + const_914;
         }
         else
         {
            if(this._itemList.length > 0 && this.var_67.length > 0)
            {
               this.var_856 = this.getItemSpacing(this._itemList[this._itemList.length - 1],this.var_67[0]);
            }
            else
            {
               this.var_856 = const_108;
            }
            this.animationStart();
         }
      }
      
      private function activateItemFromBuffer() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(this.var_67.length == 0)
         {
            return;
         }
         if(this.historyViewerMinimized())
         {
            this.resetArea();
            this.hideHistoryViewer();
         }
         if(!this.checkLastItemAllowsAdding(this.var_67[0]))
         {
            this.selectItemsToMove();
            this.moveItemsUp(this.getItemSpacing(this._itemList[this._itemList.length - 1],this.var_67[0]));
            if(!this.checkLastItemAllowsAdding(this.var_67[0]))
            {
               this.var_105.height += const_108;
               if(this.var_28 != null)
               {
                  this.var_28.containerResized(this.var_37.rectangle);
               }
            }
         }
         _loc1_ = this.var_67.shift();
         if(_loc1_ != null)
         {
            _loc1_.renderView();
            _loc2_ = _loc1_.view;
            if(_loc2_ != null)
            {
               this.var_105.addChild(_loc2_);
               _loc1_.timeStamp = new Date().time;
               this._itemList.push(_loc1_);
               _loc3_ = 0;
               if(this._itemList.length > 1)
               {
                  _loc3_ = this._itemList[this._itemList.length - 2].screenLevel;
                  if(this.historyViewerActive())
                  {
                     _loc1_.screenLevel = _loc3_ + 1;
                  }
                  else
                  {
                     _loc1_.screenLevel = _loc3_ + Math.max(this.var_698,1);
                  }
               }
               else
               {
                  _loc1_.screenLevel = 100;
               }
               _loc1_.aboveLevels = this.var_698;
               if(_loc1_.aboveLevels > const_589 + const_410 + 2)
               {
                  _loc1_.aboveLevels = const_589 + const_410 + 2;
               }
               this.var_698 = 0;
               this.setChatItemLocHorizontal(_loc1_);
               this.setChatItemLocVertical(_loc1_);
               this.setChatItemRenderable(_loc1_);
            }
         }
      }
      
      private function checkLastItemAllowsAdding(param1:RoomChatItem) : Boolean
      {
         if(this._itemList.length == 0)
         {
            return true;
         }
         var _loc2_:RoomChatItem = this._itemList[this._itemList.length - 1];
         if(param1 == null || _loc2_ == null)
         {
            return false;
         }
         if(_loc2_.view == null)
         {
            return true;
         }
         if(this.var_105.rectangle.bottom - (this.var_105.y + _loc2_.y + _loc2_.height) <= this.getItemSpacing(_loc2_,param1))
         {
            return false;
         }
         return true;
      }
      
      private function alignItems() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_28 == null)
         {
            return;
         }
         _loc1_ = this._itemList.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this._itemList[_loc1_];
            if(_loc2_ != null)
            {
               this.setChatItemLocHorizontal(_loc2_);
               this.setChatItemLocVertical(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this._itemList.length)
         {
            _loc2_ = this._itemList[_loc1_];
            if(_loc2_ != null)
            {
               this.setChatItemRenderable(_loc2_);
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this.var_67.length)
         {
            _loc2_ = this.var_67[_loc1_];
            if(_loc2_ != null)
            {
               this.setChatItemLocHorizontal(_loc2_);
            }
            _loc1_++;
         }
      }
      
      private function animationStart() : void
      {
         if(this.var_854)
         {
            return;
         }
         this.selectItemsToMove();
         this.var_854 = true;
      }
      
      private function animationStop() : void
      {
         this.var_854 = false;
      }
      
      private function selectItemsToMove() : void
      {
         var _loc4_:* = null;
         if(this.var_854)
         {
            return;
         }
         this.purgeItems();
         this.var_235 = new Array();
         var _loc1_:int = new Date().time;
         var _loc2_:int = 0;
         if(this._itemList.length == 0)
         {
            this.var_698 = 1;
            return;
         }
         if(this.historyViewerActive())
         {
            return;
         }
         ++this.var_698;
         var _loc3_:int = this._itemList.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this._itemList[_loc3_];
            if(_loc4_.view != null)
            {
               if(_loc4_.screenLevel > const_410 || _loc4_.screenLevel == _loc2_ - 1 || _loc1_ - _loc4_.timeStamp >= const_1255)
               {
                  _loc4_.timeStamp = _loc1_;
                  _loc2_ = _loc4_.screenLevel;
                  --_loc4_.screenLevel;
                  this.var_235.push(_loc4_);
               }
            }
            _loc3_--;
         }
      }
      
      private function moveItemsUp(param1:int) : void
      {
         var _loc3_:Boolean = false;
         if(this.var_235 == null)
         {
            return;
         }
         if(this.var_235.length == 0)
         {
            return;
         }
         var _loc2_:* = null;
         var _loc4_:int = -1;
         var _loc5_:int = this.var_235.length - 1;
         while(_loc5_ >= 0)
         {
            _loc2_ = this.var_235[_loc5_];
            if(_loc2_ != null)
            {
               if(_loc4_ == -1)
               {
                  _loc4_ = this._itemList.indexOf(_loc2_);
               }
               else
               {
                  _loc4_++;
               }
               _loc3_ = true;
               if(this.historyViewerActive())
               {
                  if(_loc2_.y - param1 + _loc2_.height < 0)
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc4_ > 0)
               {
                  if(this._itemList[_loc4_ - 1].view != null)
                  {
                     if(_loc2_.y - param1 - this._itemList[_loc4_ - 1].y < this.getItemSpacing(this._itemList[_loc4_ - 1],_loc2_))
                     {
                        _loc3_ = false;
                     }
                  }
               }
               if(_loc3_)
               {
                  _loc2_.y -= param1;
               }
            }
            _loc5_--;
         }
      }
      
      private function setChatItemLocHorizontal(param1:RoomChatItem) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(param1 == null || this.var_28 == null)
         {
            return;
         }
         var _loc2_:Number = (param1.senderX + this.var_697.x) * this.var_855;
         var _loc3_:Number = _loc2_ - param1.width / 2;
         var _loc4_:Number = _loc3_ + param1.width;
         var _loc5_:Number = -this.var_37.width / 2 - const_915;
         var _loc6_:Number = this.var_37.width / 2 + const_915 - this.var_28.scrollbarWidth;
         var _loc7_:Boolean = _loc3_ >= _loc5_ && _loc3_ <= _loc6_;
         var _loc8_:Boolean = _loc4_ >= _loc5_ && _loc4_ <= _loc6_;
         if(_loc7_ && _loc8_)
         {
            _loc9_ = _loc3_;
            _loc10_ = _loc9_;
         }
         else if(_loc2_ >= 0)
         {
            _loc9_ = _loc6_ - param1.width;
         }
         else
         {
            _loc9_ = _loc5_;
         }
         param1.x = _loc9_ + this.var_37.width / 2 + this.var_37.x;
         if(_loc2_ < _loc5_ || _loc2_ > _loc6_)
         {
            param1.hidePointer();
         }
         else
         {
            param1.setPointerOffset(_loc3_ - _loc9_);
         }
      }
      
      private function setChatItemLocVertical(param1:RoomChatItem) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 != null)
         {
            _loc2_ = this._itemList.indexOf(param1);
            _loc3_ = !!this.historyViewerActive() ? 0 : Number(this.var_698);
            if(_loc2_ == this._itemList.length - 1)
            {
               param1.y = this.getAreaBottom() - (_loc3_ + 1) * const_108 - const_411;
            }
            else
            {
               _loc4_ = this._itemList[_loc2_ + 1].aboveLevels;
               if(_loc4_ < 2)
               {
                  param1.y = this._itemList[_loc2_ + 1].y - this.getItemSpacing(param1,this._itemList[_loc2_ + 1]);
               }
               else
               {
                  param1.y = this._itemList[_loc2_ + 1].y - _loc4_ * const_108;
               }
            }
         }
      }
      
      private function setChatItemRenderable(param1:RoomChatItem) : void
      {
         if(param1 != null)
         {
            if(param1.y < -const_588)
            {
               if(param1.view != null)
               {
                  this.var_105.removeChild(param1.view);
                  param1.hideView();
               }
            }
            else if(param1.view == null)
            {
               param1.renderView();
               if(param1.view != null)
               {
                  this.var_105.addChild(param1.view);
               }
            }
         }
      }
      
      public function getTotalContentHeight() : int
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._itemList.length)
         {
            _loc1_ = this._itemList[_loc3_];
            if(_loc1_ != null)
            {
               if(_loc3_ == 0)
               {
                  _loc2_ += const_108;
               }
               else
               {
                  _loc2_ += this.getItemSpacing(this._itemList[_loc3_ - 1],_loc1_);
               }
               _loc2_ += (_loc1_.aboveLevels - 1) * const_108;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function getAreaBottom() : Number
      {
         if(this.historyViewerActive())
         {
            return this.var_105.height;
         }
         return this.var_209 + this.var_37.y;
      }
      
      private function getItemSpacing(param1:RoomChatItem, param2:RoomChatItem) : Number
      {
         if(param1.checkOverlap(param2.x,param1.y,param2.width,param2.height))
         {
            return const_108;
         }
         return const_1254;
      }
      
      private function purgeItems() : void
      {
         var _loc2_:* = null;
         if(this.historyViewerActive())
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(this._itemList.length > this.var_2210)
         {
            _loc2_ = this._itemList.shift();
            _loc3_ = this.var_235.indexOf(_loc2_);
            if(_loc3_ > -1)
            {
               this.var_235.splice(_loc3_,1);
            }
            if(_loc2_.view != null)
            {
               this.var_105.removeChild(_loc2_.view);
               _loc2_.hideView();
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
         var _loc4_:Boolean = false;
         _loc1_ = 0;
         for(; _loc1_ < this._itemList.length; _loc1_++)
         {
            _loc2_ = this._itemList[_loc1_];
            if(_loc2_ != null)
            {
               if(_loc2_.y > -const_588)
               {
                  _loc4_ = true;
               }
               _loc2_.aboveLevels = 1;
               if(_loc2_.view != null)
               {
                  _loc3_ = this.var_235.indexOf(_loc2_);
                  if(_loc3_ > -1)
                  {
                     this.var_235.splice(_loc3_,1);
                  }
                  this.var_105.removeChild(_loc2_.view);
                  _loc2_.hideView();
               }
               continue;
               break;
            }
         }
         if(this.var_67.length > 0)
         {
            _loc4_ = true;
         }
         if(this.getTotalContentHeight() > const_108 && !_loc4_ && !this.historyViewerActive())
         {
            if(this.var_28 != null)
            {
               this.stretchAreaBottomTo(this.var_37.y);
               this.alignItems();
               if(!this.historyViewerActive())
               {
                  this.var_28.showHistoryViewer();
               }
               if(!this.historyViewerVisible())
               {
                  this.var_28.visible = true;
               }
            }
         }
         else if(this.historyViewerVisible())
         {
            this.var_28.visible = false;
         }
      }
      
      private function getFreeItemId() : String
      {
         return "chat_" + this.var_2208.toString() + "_item_" + (this.var_2209++).toString();
      }
      
      public function onItemMouseClick(param1:int, param2:String, param3:int, param4:int, param5:int, param6:WindowMouseEvent) : void
      {
         if(param6.shiftKey)
         {
            if(this.var_28 != null)
            {
               this.var_28.toggleHistoryViewer();
            }
            return;
         }
         var _loc7_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_330,param1,param3);
         messageListener.processWidgetMessage(_loc7_);
         var _loc8_:RoomWidgetChatSelectAvatarMessage = new RoomWidgetChatSelectAvatarMessage(RoomWidgetChatSelectAvatarMessage.const_851,param1,param2,param4,param5);
         messageListener.processWidgetMessage(_loc8_);
      }
      
      public function onItemMouseDown(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
         if(this.historyViewerVisible())
         {
            return;
         }
         if(this.var_28 != null)
         {
            this.var_28.beginDrag(param5.stageY);
         }
      }
      
      public function onItemMouseOver(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      public function onItemMouseOut(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      public function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(this.var_28 != null)
         {
            this.var_28.beginDrag(param1.stageY,true);
         }
      }
      
      public function onPulldownCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(this.var_28 != null)
         {
            this.var_28.hideHistoryViewer();
         }
      }
      
      public function stretchAreaBottomBy(param1:Number) : void
      {
         var _loc2_:Number = this.var_37.rectangle.bottom + param1 - 0;
         this.stretchAreaBottomTo(_loc2_);
      }
      
      public function stretchAreaBottomTo(param1:Number) : void
      {
         var _loc2_:int = this.var_37.context.getDesktopWindow().height - 0;
         param1 = Math.min(param1,_loc2_);
         this.var_209 = param1 - this.var_37.y;
         this.var_37.height = this.var_209 + RoomChatHistoryPulldown.const_81;
         if(this.var_28 != null)
         {
            this.var_28.containerResized(this.var_37.rectangle);
         }
      }
      
      public function resetArea() : void
      {
         if(this.var_28 == null)
         {
            return;
         }
         this.animationStop();
         this.var_209 = const_913 + const_411;
         this.var_37.height = this.var_209 + this.var_28.pulldownBarHeight;
         this.var_330.width = this.var_37.width - this.var_28.scrollbarWidth;
         this.var_330.height = this.var_209;
         this.var_105.width = this.var_37.width - this.var_28.scrollbarWidth;
         if(this.historyViewerActive())
         {
            this.var_105.height = this.getTotalContentHeight() + const_411;
         }
         else
         {
            this.var_105.height = this.var_209;
         }
         this.var_330.scrollV = 1;
         if(!this.historyViewerActive())
         {
            this.var_28.containerResized(this.var_37.rectangle);
         }
         this.purgeItems();
         this.alignItems();
      }
      
      private function historyViewerActive() : Boolean
      {
         return this.var_28 == null ? false : Boolean(this.var_28.active);
      }
      
      private function historyViewerVisible() : Boolean
      {
         return this.var_28 == null ? false : Boolean(this.var_28.visible);
      }
      
      public function hideHistoryViewer() : void
      {
         if(this.var_28 != null)
         {
            this.var_28.hideHistoryViewer();
         }
      }
      
      private function historyViewerMinimized() : Boolean
      {
         return this.var_330.height <= 1;
      }
      
      public function resizeContainerToLowestItem() : void
      {
         var _loc4_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._itemList.length)
         {
            _loc4_ = this._itemList[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_67.length)
         {
            _loc4_ = this.var_67[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc1_ += const_588;
         _loc1_ = _loc1_ < 0 ? 0 : int(_loc1_);
         var _loc3_:int = this.var_37.rectangle.bottom;
         this.stretchAreaBottomTo(this.var_37.rectangle.top + _loc1_);
         _loc3_ -= this.var_37.rectangle.bottom;
         if(Math.abs(_loc3_) < RoomChatHistoryViewer.const_1110)
         {
            this.resetArea();
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < this._itemList.length)
         {
            _loc4_ = this._itemList[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_67.length)
         {
            _loc4_ = this.var_67[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         this.var_1621 = true;
      }
      
      public function mouseUp() : void
      {
         var _loc1_:Number = this.var_37.rectangle.bottom - 0;
         if(_loc1_ < const_913)
         {
            if(_loc1_ <= this.var_209 + this.var_37.y)
            {
               if(this.historyViewerActive())
               {
                  this.hideHistoryViewer();
               }
               this.resetArea();
               return;
            }
         }
         if(this.var_1621 && !this.historyViewerActive())
         {
            this.resetArea();
            this.var_1621 = false;
         }
      }
      
      public function reAlignItemsToHistoryContent() : void
      {
         if(this.historyViewerActive())
         {
            this.var_105.height = this.getTotalContentHeight() + const_411;
            this.alignItems();
         }
      }
      
      public function enableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < this._itemList.length)
         {
            _loc1_ = this._itemList[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_67.length)
         {
            _loc1_ = this.var_67[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
      }
      
      public function disableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < this._itemList.length)
         {
            _loc1_ = this._itemList[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_67.length)
         {
            _loc1_ = this.var_67[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
      }
   }
}
