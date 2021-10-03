package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWUAM_WHISPER_USER";
      
      public static const const_667:String = "RWUAM_IGNORE_USER";
      
      public static const const_879:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_430:String = "RWUAM_KICK_USER";
      
      public static const const_717:String = "RWUAM_BAN_USER";
      
      public static const const_801:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_712:String = "RWUAM_RESPECT_USER";
      
      public static const const_626:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_764:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_791:String = "RWUAM_START_TRADING";
      
      public static const const_728:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_553:String = "RWUAM_KICK_BOT";
      
      public static const const_771:String = "RWUAM_REPORT";
      
      public static const const_516:String = "RWUAM_PICKUP_PET";
      
      public static const const_1434:String = "RWUAM_TRAIN_PET";
      
      public static const const_422:String = " RWUAM_RESPECT_PET";
      
      public static const const_383:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
