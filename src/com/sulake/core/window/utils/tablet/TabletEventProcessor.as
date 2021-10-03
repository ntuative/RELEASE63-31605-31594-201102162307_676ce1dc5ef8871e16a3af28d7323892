package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2802:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_136 = param1.desktop;
         var_80 = param1.var_1222 as WindowController;
         _lastClickTarget = param1.var_1220 as WindowController;
         var_163 = param1.renderer;
         var_795 = param1.var_1219;
         param2.begin();
         param2.end();
         param1.desktop = var_136;
         param1.var_1222 = var_80;
         param1.var_1220 = _lastClickTarget;
         param1.renderer = var_163;
         param1.var_1219 = var_795;
      }
   }
}
