package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1691:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_196:MsgWithRequestId;
      
      private var var_590:RoomEventData;
      
      private var var_2336:Boolean;
      
      private var var_2334:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2341:int;
      
      private var var_243:GuestRoomData;
      
      private var var_882:PublicRoomShortData;
      
      private var var_2335:int;
      
      private var var_2338:Boolean;
      
      private var var_2332:int;
      
      private var var_2342:Boolean;
      
      private var var_1703:int;
      
      private var var_2340:Boolean;
      
      private var var_1338:Array;
      
      private var var_1345:Array;
      
      private var var_2331:int;
      
      private var var_1344:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1089:Boolean;
      
      private var var_2337:int;
      
      private var var_2333:Boolean;
      
      private var var_2339:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1338 = new Array();
         this.var_1345 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_243 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_243 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_882 = null;
         this.var_243 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_882 = param1.publicSpace;
            this.var_590 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_590 != null)
         {
            this.var_590.dispose();
            this.var_590 = null;
         }
         if(this.var_882 != null)
         {
            this.var_882.dispose();
            this.var_882 = null;
         }
         if(this.var_243 != null)
         {
            this.var_243.dispose();
            this.var_243 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_243 != null)
         {
            this.var_243.dispose();
         }
         this.var_243 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_590 != null)
         {
            this.var_590.dispose();
         }
         this.var_590 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_196 != null && this.var_196 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_196 != null && this.var_196 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_196 != null && this.var_196 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_196 = param1;
         this.var_1089 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_196 = param1;
         this.var_1089 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_196 = param1;
         this.var_1089 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_196 == null)
         {
            return;
         }
         this.var_196.dispose();
         this.var_196 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_196 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_196 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_196 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_590;
      }
      
      public function get avatarId() : int
      {
         return this.var_2341;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2336;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2334;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_243;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_882;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2338;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2332;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1703;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2342;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2337;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2335;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2340;
      }
      
      public function get adIndex() : int
      {
         return this.var_2339;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2333;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2341 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2332 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2338 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2336 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2334 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1703 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2337 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2335 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2340 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2339 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2333 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1338 = param1;
         this.var_1345 = new Array();
         for each(_loc2_ in this.var_1338)
         {
            if(_loc2_.visible)
            {
               this.var_1345.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1338;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1345;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2331 = param1.limit;
         this.var_1344 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1344 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_243.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_243 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_243.flatId;
         return this.var_1703 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1344 >= this.var_2331;
      }
      
      public function startLoading() : void
      {
         this.var_1089 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1089;
      }
   }
}
