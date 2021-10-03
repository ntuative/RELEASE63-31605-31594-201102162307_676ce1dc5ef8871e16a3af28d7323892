package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AvailableQuestBadgeData
   {
       
      
      private var var_288:int;
      
      private var var_2174:String;
      
      public function AvailableQuestBadgeData(param1:IMessageDataWrapper)
      {
         super();
         this.var_288 = param1.readInteger();
         this.var_2174 = param1.readString();
      }
      
      public function get badgeId() : int
      {
         return this.var_288;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2174;
      }
   }
}
