package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1667:int;
      
      private var var_2277:int;
      
      private var var_1267:int;
      
      private var var_2057:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1667 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_1267 = param1.readInteger();
         this.var_2057 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1667);
      }
      
      public function get callId() : int
      {
         return this.var_1667;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2277;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1267;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2057;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
