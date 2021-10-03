package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1342:int;
      
      private var var_1523:int;
      
      private var var_2322:int;
      
      private var var_1700:int;
      
      private var var_1343:int;
      
      private var var_2072:String = "";
      
      private var var_2691:String = "";
      
      private var var_2690:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1342 = param1.readInteger();
         this.var_2072 = param1.readString();
         this.var_1523 = param1.readInteger();
         this.var_2322 = param1.readInteger();
         this.var_1700 = param1.readInteger();
         this.var_1343 = param1.readInteger();
         this.var_2690 = param1.readInteger();
         this.var_2691 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1342;
      }
      
      public function get points() : int
      {
         return this.var_1523;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2322;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1700;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1343;
      }
      
      public function get badgeID() : String
      {
         return this.var_2072;
      }
      
      public function get achievementID() : int
      {
         return this.var_2690;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2691;
      }
   }
}
