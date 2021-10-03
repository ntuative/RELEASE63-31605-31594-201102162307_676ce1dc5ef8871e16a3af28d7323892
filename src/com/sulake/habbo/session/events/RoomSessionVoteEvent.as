package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_143:String = "RSPE_VOTE_QUESTION";
      
      public static const const_125:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1133:String = "";
      
      private var var_1392:Array;
      
      private var var_1071:Array;
      
      private var var_1787:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1392 = [];
         this.var_1071 = [];
         super(param1,param2,param7,param8);
         this.var_1133 = param3;
         this.var_1392 = param4;
         this.var_1071 = param5;
         if(this.var_1071 == null)
         {
            this.var_1071 = [];
         }
         this.var_1787 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1133;
      }
      
      public function get choices() : Array
      {
         return this.var_1392.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1071.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1787;
      }
   }
}
