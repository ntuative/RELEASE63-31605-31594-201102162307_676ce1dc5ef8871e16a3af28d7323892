package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1991:int = 0;
      
      private var var_1387:String = "";
      
      private var var_1777:String = "";
      
      private var var_2159:String = "";
      
      private var var_2162:String = "";
      
      private var var_1591:int = 0;
      
      private var var_2160:int = 0;
      
      private var var_2163:int = 0;
      
      private var var_1385:int = 0;
      
      private var var_2161:int = 0;
      
      private var var_1388:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_1991 = param1;
         this.var_1387 = param2;
         this.var_1777 = param3;
         this.var_2159 = param4;
         this.var_2162 = param5;
         if(param6)
         {
            this.var_1591 = 1;
         }
         else
         {
            this.var_1591 = 0;
         }
         this.var_2160 = param7;
         this.var_2163 = param8;
         this.var_1385 = param9;
         this.var_2161 = param10;
         this.var_1388 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1991,this.var_1387,this.var_1777,this.var_2159,this.var_2162,this.var_1591,this.var_2160,this.var_2163,this.var_1385,this.var_2161,this.var_1388];
      }
   }
}
