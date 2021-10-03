package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1053:Boolean;
      
      private var var_1054:Boolean;
      
      private var var_1298:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1053;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1054;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1298;
      }
      
      public function flush() : Boolean
      {
         this.var_1053 = false;
         this.var_1054 = false;
         this.var_1298 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1053 = param1.readBoolean();
         this.var_1054 = param1.readBoolean();
         this.var_1298 = param1.readBoolean();
         return true;
      }
   }
}
