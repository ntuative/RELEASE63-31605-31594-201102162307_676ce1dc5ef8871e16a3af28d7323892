package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1342:int;
      
      private var var_288:String;
      
      private var var_2415:int;
      
      private var var_2322:int;
      
      private var var_1700:int;
      
      private var var_2414:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1342 = param1.readInteger();
         this.var_288 = param1.readString();
         this.var_2415 = param1.readInteger();
         this.var_2322 = param1.readInteger();
         this.var_1700 = param1.readInteger();
         this.var_2414 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_288;
      }
      
      public function get level() : int
      {
         return this.var_1342;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2415;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2322;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1700;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2414;
      }
   }
}
