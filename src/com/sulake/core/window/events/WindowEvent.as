package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1369:String = "WE_CREATE";
      
      public static const const_1429:String = "WE_CREATED";
      
      public static const const_1540:String = "WE_DESTROY";
      
      public static const const_295:String = "WE_DESTROYED";
      
      public static const const_1460:String = "WE_OPEN";
      
      public static const const_1507:String = "WE_OPENED";
      
      public static const const_1624:String = "WE_CLOSE";
      
      public static const const_1504:String = "WE_CLOSED";
      
      public static const const_1447:String = "WE_FOCUS";
      
      public static const const_294:String = "WE_FOCUSED";
      
      public static const const_1568:String = "WE_UNFOCUS";
      
      public static const const_1359:String = "WE_UNFOCUSED";
      
      public static const const_1511:String = "WE_ACTIVATE";
      
      public static const const_1436:String = "WE_ACTIVATED";
      
      public static const const_1598:String = "WE_DEACTIVATE";
      
      public static const const_825:String = "WE_DEACTIVATED";
      
      public static const const_450:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_881:String = "WE_UNSELECT";
      
      public static const const_863:String = "WE_UNSELECTED";
      
      public static const const_1747:String = "WE_ATTACH";
      
      public static const const_1807:String = "WE_ATTACHED";
      
      public static const const_1871:String = "WE_DETACH";
      
      public static const const_1757:String = "WE_DETACHED";
      
      public static const const_1440:String = "WE_LOCK";
      
      public static const const_1575:String = "WE_LOCKED";
      
      public static const const_1513:String = "WE_UNLOCK";
      
      public static const const_1457:String = "WE_UNLOCKED";
      
      public static const const_892:String = "WE_ENABLE";
      
      public static const const_303:String = "WE_ENABLED";
      
      public static const const_610:String = "WE_DISABLE";
      
      public static const const_224:String = "WE_DISABLED";
      
      public static const const_1579:String = "WE_RELOCATE";
      
      public static const const_396:String = "WE_RELOCATED";
      
      public static const const_1456:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const const_1558:String = "WE_MINIMIZE";
      
      public static const const_1367:String = "WE_MINIMIZED";
      
      public static const const_1462:String = "WE_MAXIMIZE";
      
      public static const const_1492:String = "WE_MAXIMIZED";
      
      public static const const_1401:String = "WE_RESTORE";
      
      public static const const_1621:String = "WE_RESTORED";
      
      public static const const_1867:String = "WE_ARRANGE";
      
      public static const const_1820:String = "WE_ARRANGED";
      
      public static const const_102:String = "WE_UPDATE";
      
      public static const const_1838:String = "WE_UPDATED";
      
      public static const const_1861:String = "WE_CHILD_RELOCATE";
      
      public static const const_556:String = "WE_CHILD_RELOCATED";
      
      public static const const_1780:String = "WE_CHILD_RESIZE";
      
      public static const const_284:String = "WE_CHILD_RESIZED";
      
      public static const const_1925:String = "WE_CHILD_REMOVE";
      
      public static const const_494:String = "WE_CHILD_REMOVED";
      
      public static const const_1924:String = "WE_PARENT_RELOCATE";
      
      public static const const_1766:String = "WE_PARENT_RELOCATED";
      
      public static const const_1874:String = "WE_PARENT_RESIZE";
      
      public static const const_1607:String = "WE_PARENT_RESIZED";
      
      public static const const_181:String = "WE_OK";
      
      public static const const_868:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_418:String = "WE_SCROLL";
      
      public static const const_161:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1988:IWindow;
      
      protected var var_1987:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1988 = param3;
         this.var_1987 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1988;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1987 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1987;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
