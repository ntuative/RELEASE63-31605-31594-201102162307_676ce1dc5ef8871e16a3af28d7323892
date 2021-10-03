package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2504:int;
      
      private var var_2502:int;
      
      private var var_2503:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2504 = param1;
         this.var_2502 = param2;
         this.var_2503 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2504,this.var_2502,this.var_2503];
      }
      
      public function dispose() : void
      {
      }
   }
}
