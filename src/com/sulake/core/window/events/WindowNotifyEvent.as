package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1577:String = "WN_CRETAE";
      
      public static const const_1632:String = "WN_CREATED";
      
      public static const const_1019:String = "WN_DESTROY";
      
      public static const const_1036:String = "WN_DESTROYED";
      
      public static const const_1055:String = "WN_OPEN";
      
      public static const const_1128:String = "WN_OPENED";
      
      public static const const_1205:String = "WN_CLOSE";
      
      public static const const_987:String = "WN_CLOSED";
      
      public static const const_1102:String = "WN_FOCUS";
      
      public static const const_1082:String = "WN_FOCUSED";
      
      public static const const_1103:String = "WN_UNFOCUS";
      
      public static const const_1031:String = "WN_UNFOCUSED";
      
      public static const const_1092:String = "WN_ACTIVATE";
      
      public static const const_404:String = "WN_ACTVATED";
      
      public static const const_982:String = "WN_DEACTIVATE";
      
      public static const const_990:String = "WN_DEACTIVATED";
      
      public static const const_490:String = "WN_SELECT";
      
      public static const const_395:String = "WN_SELECTED";
      
      public static const const_866:String = "WN_UNSELECT";
      
      public static const const_787:String = "WN_UNSELECTED";
      
      public static const const_1001:String = "WN_LOCK";
      
      public static const const_1038:String = "WN_LOCKED";
      
      public static const const_1034:String = "WN_UNLOCK";
      
      public static const const_1039:String = "WN_UNLOCKED";
      
      public static const const_1175:String = "WN_ENABLE";
      
      public static const const_681:String = "WN_ENABLED";
      
      public static const const_1099:String = "WN_DISABLE";
      
      public static const const_673:String = "WN_DISABLED";
      
      public static const const_779:String = "WN_RESIZE";
      
      public static const const_194:String = "WN_RESIZED";
      
      public static const const_1104:String = "WN_RELOCATE";
      
      public static const const_453:String = "WN_RELOCATED";
      
      public static const const_1083:String = "WN_MINIMIZE";
      
      public static const const_975:String = "WN_MINIMIZED";
      
      public static const const_1011:String = "WN_MAXIMIZE";
      
      public static const const_1000:String = "WN_MAXIMIZED";
      
      public static const const_1064:String = "WN_RESTORE";
      
      public static const const_1024:String = "WN_RESTORED";
      
      public static const const_1736:String = "WN_ARRANGE";
      
      public static const const_1752:String = "WN_ARRANGED";
      
      public static const const_1765:String = "WN_UPDATE";
      
      public static const const_1932:String = "WN_UPDATED";
      
      public static const const_368:String = "WN_CHILD_ADDED";
      
      public static const const_691:String = "WN_CHILD_REMOVED";
      
      public static const const_302:String = "WN_CHILD_RESIZED";
      
      public static const const_287:String = "WN_CHILD_RELOCATED";
      
      public static const const_248:String = "WN_CHILD_ACTIVATED";
      
      public static const const_452:String = "WN_PARENT_ADDED";
      
      public static const const_1162:String = "WN_PARENT_REMOVED";
      
      public static const const_549:String = "WN_PARENT_RESIZED";
      
      public static const const_986:String = "WN_PARENT_RELOCATED";
      
      public static const const_620:String = "WN_PARENT_ACTIVATED";
      
      public static const const_513:String = "WN_STATE_UPDATED";
      
      public static const const_445:String = "WN_STYLE_UPDATED";
      
      public static const const_527:String = "WN_PARAM_UPDATED";
      
      public static const const_1872:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1988,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
