package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class GestureAgentService implements IGestureAgentService, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      protected var _working:Boolean;
      
      protected var _window:IWindow;
      
      protected var var_190:Timer;
      
      protected var var_1479:uint = 0;
      
      protected var var_271:Function;
      
      protected var var_1227:int;
      
      protected var var_1226:int;
      
      public function GestureAgentService()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this.end(this._window);
         this._disposed = true;
      }
      
      public function begin(param1:IWindow, param2:Function, param3:uint, param4:int, param5:int) : IWindow
      {
         this.var_1479 = param3;
         var _loc6_:IWindow = this._window;
         if(this._window != null)
         {
            this.end(this._window);
         }
         if(param1 && !param1.disposed)
         {
            this._window = param1;
            this._window.addEventListener(WindowEvent.const_295,this.clientWindowDestroyed);
            this.var_271 = param2;
            this._working = true;
            this.var_1227 = param4;
            this.var_1226 = param5;
            this.var_190 = new Timer(40,0);
            this.var_190.addEventListener(TimerEvent.TIMER,this.operate);
            this.var_190.start();
         }
         return _loc6_;
      }
      
      protected function operate(param1:TimerEvent) : void
      {
         this.var_1227 *= 0.75;
         this.var_1226 *= 0.75;
         if(Math.abs(this.var_1227) <= 1 && Math.abs(this.var_1226) <= 1)
         {
            this.end(this._window);
         }
         else if(this.var_271 != null)
         {
            this.var_271(this.var_1227,this.var_1226);
         }
      }
      
      public function end(param1:IWindow) : IWindow
      {
         var _loc2_:IWindow = this._window;
         if(this.var_190)
         {
            this.var_190.stop();
            this.var_190.removeEventListener(TimerEvent.TIMER,this.operate);
            this.var_190 = null;
         }
         if(this._working)
         {
            if(this._window == param1)
            {
               if(!this._window.disposed)
               {
                  this._window.removeEventListener(WindowEvent.const_295,this.clientWindowDestroyed);
               }
               this._window = null;
               this._working = false;
            }
         }
         return _loc2_;
      }
      
      private function clientWindowDestroyed(param1:WindowEvent) : void
      {
         this.end(this._window);
      }
   }
}
