package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1075:int = 1;
      
      public static const const_877:int = 2;
      
      public static const const_781:int = 3;
      
      public static const const_1545:int = 4;
       
      
      private var _index:int;
      
      private var var_2537:String;
      
      private var var_2534:String;
      
      private var var_2536:Boolean;
      
      private var var_2535:String;
      
      private var var_902:String;
      
      private var var_2538:int;
      
      private var var_2348:int;
      
      private var _type:int;
      
      private var var_2369:String;
      
      private var var_933:GuestRoomData;
      
      private var var_932:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2537 = param1.readString();
         this.var_2534 = param1.readString();
         this.var_2536 = param1.readInteger() == 1;
         this.var_2535 = param1.readString();
         this.var_902 = param1.readString();
         this.var_2538 = param1.readInteger();
         this.var_2348 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1075)
         {
            this.var_2369 = param1.readString();
         }
         else if(this._type == const_781)
         {
            this.var_932 = new PublicRoomData(param1);
         }
         else if(this._type == const_877)
         {
            this.var_933 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_933 != null)
         {
            this.var_933.dispose();
            this.var_933 = null;
         }
         if(this.var_932 != null)
         {
            this.var_932.dispose();
            this.var_932 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2537;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2534;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2536;
      }
      
      public function get picText() : String
      {
         return this.var_2535;
      }
      
      public function get picRef() : String
      {
         return this.var_902;
      }
      
      public function get folderId() : int
      {
         return this.var_2538;
      }
      
      public function get tag() : String
      {
         return this.var_2369;
      }
      
      public function get userCount() : int
      {
         return this.var_2348;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_933;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_932;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1075)
         {
            return 0;
         }
         if(this.type == const_877)
         {
            return this.var_933.maxUserCount;
         }
         if(this.type == const_781)
         {
            return this.var_932.maxUsers;
         }
         return 0;
      }
   }
}
