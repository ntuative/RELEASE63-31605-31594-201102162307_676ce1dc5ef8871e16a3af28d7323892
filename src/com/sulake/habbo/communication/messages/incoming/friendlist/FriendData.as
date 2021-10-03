package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_813:int;
      
      private var var_774:Boolean;
      
      private var var_1769:Boolean;
      
      private var var_544:String;
      
      private var var_1264:int;
      
      private var var_1772:String;
      
      private var var_1770:String;
      
      private var var_1771:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_813 = param1.readInteger();
         this.var_774 = param1.readBoolean();
         this.var_1769 = param1.readBoolean();
         this.var_544 = param1.readString();
         this.var_1264 = param1.readInteger();
         this.var_1772 = param1.readString();
         this.var_1770 = param1.readString();
         this.var_1771 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_813;
      }
      
      public function get online() : Boolean
      {
         return this.var_774;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1769;
      }
      
      public function get figure() : String
      {
         return this.var_544;
      }
      
      public function get categoryId() : int
      {
         return this.var_1264;
      }
      
      public function get motto() : String
      {
         return this.var_1772;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1770;
      }
      
      public function get realName() : String
      {
         return this.var_1771;
      }
   }
}
