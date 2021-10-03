package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1517:IID;
      
      private var var_742:Boolean;
      
      private var var_1013:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1517 = param1;
         this.var_1013 = new Array();
         this.var_742 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1517;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_742;
      }
      
      public function get receivers() : Array
      {
         return this.var_1013;
      }
      
      public function dispose() : void
      {
         if(!this.var_742)
         {
            this.var_742 = true;
            this.var_1517 = null;
            while(this.var_1013.length > 0)
            {
               this.var_1013.pop();
            }
            this.var_1013 = null;
         }
      }
   }
}
