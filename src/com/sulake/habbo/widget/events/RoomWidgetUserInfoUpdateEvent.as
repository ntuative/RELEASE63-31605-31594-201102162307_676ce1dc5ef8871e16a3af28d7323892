package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_123:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_136:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1020:int = 2;
      
      public static const const_1120:int = 3;
      
      public static const const_1537:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1772:String = "";
      
      private var var_2002:int;
      
      private var var_2000:int = 0;
      
      private var var_2009:int = 0;
      
      private var var_544:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_265:Array;
      
      private var var_1495:Array;
      
      private var var_1451:int = 0;
      
      private var var_1998:String = "";
      
      private var var_1999:int = 0;
      
      private var var_2004:int = 0;
      
      private var var_1813:Boolean = false;
      
      private var var_1771:String = "";
      
      private var var_2001:Boolean = false;
      
      private var var_2005:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_1997:Boolean = false;
      
      private var var_2008:Boolean = false;
      
      private var var_2003:Boolean = false;
      
      private var var_2006:Boolean = false;
      
      private var var_1996:Boolean = false;
      
      private var var_2010:Boolean = false;
      
      private var var_2007:int = 0;
      
      private var var_1814:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_265 = [];
         this.var_1495 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1772 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1772;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2002 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2002;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2000 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2000;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2009 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2009;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_544 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_265 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_265;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1495;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1495 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1451 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1451;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_1998 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_1998;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2001 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2001;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_1997 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_1997;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2008 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2008;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2003 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2003;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2006 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2006;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_1996 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_1996;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2010 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2010;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2007 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2007;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2005 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2005;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1814 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1814;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_1999 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_1999;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2004 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2004;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1813 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1813;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1771 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1771;
      }
   }
}
