package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2341:int;
      
      private var var_1888:String;
      
      private var var_2604:String;
      
      private var var_2601:Boolean;
      
      private var var_2605:Boolean;
      
      private var var_2602:int;
      
      private var var_2603:String;
      
      private var var_2600:String;
      
      private var var_1771:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2341 = param1.readInteger();
         this.var_1888 = param1.readString();
         this.var_2604 = param1.readString();
         this.var_2601 = param1.readBoolean();
         this.var_2605 = param1.readBoolean();
         param1.readString();
         this.var_2602 = param1.readInteger();
         this.var_2603 = param1.readString();
         this.var_2600 = param1.readString();
         this.var_1771 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2341;
      }
      
      public function get avatarName() : String
      {
         return this.var_1888;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2604;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2601;
      }
      
      public function get method_11() : Boolean
      {
         return this.var_2605;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2602;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2603;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2600;
      }
      
      public function get realName() : String
      {
         return this.var_1771;
      }
   }
}
