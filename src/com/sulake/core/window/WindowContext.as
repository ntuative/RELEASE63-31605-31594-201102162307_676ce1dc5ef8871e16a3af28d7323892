package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_447:uint = 0;
      
      public static const const_1490:uint = 1;
      
      public static const const_1884:int = 0;
      
      public static const const_1849:int = 1;
      
      public static const const_1759:int = 2;
      
      public static const const_1796:int = 3;
      
      public static const const_1381:int = 4;
      
      public static const const_376:int = 5;
      
      public static var var_1477:IMouseCursor;
      
      public static var var_374:IEventQueue;
      
      private static var var_554:IEventProcessor;
      
      private static var var_1581:uint = const_447;
      
      private static var stage:Stage;
      
      private static var var_163:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2135:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_184:DisplayObjectContainer;
      
      protected var var_2785:Boolean = true;
      
      protected var var_1228:Error;
      
      protected var var_1973:int = -1;
      
      protected var var_1229:IInternalWindowServices;
      
      protected var var_1481:IWindowParser;
      
      protected var var_2731:IWindowFactory;
      
      protected var var_136:IDesktopWindow;
      
      protected var var_1482:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_529:Boolean = false;
      
      private var var_2134:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_163 = param2;
         this._localization = param4;
         this.var_184 = param5;
         this.var_1229 = new ServiceManager(this,param5);
         this.var_2731 = param3;
         this.var_1481 = new WindowParser(this);
         this.var_2135 = param7;
         if(!stage)
         {
            if(this.var_184 is Stage)
            {
               stage = this.var_184 as Stage;
            }
            else if(this.var_184.stage)
            {
               stage = this.var_184.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_136 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_184.addChild(this.var_136.getDisplayObject());
         this.var_184.doubleClickEnabled = true;
         this.var_184.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_163,this.var_136,this.var_136,null,this.var_2135);
         inputMode = const_447;
         this.var_1482 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1581;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_374)
         {
            if(var_374 is IDisposable)
            {
               IDisposable(var_374).dispose();
            }
         }
         if(var_554)
         {
            if(var_554 is IDisposable)
            {
               IDisposable(var_554).dispose();
            }
         }
         switch(value)
         {
            case const_447:
               var_374 = new MouseEventQueue(stage);
               var_554 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1490:
               var_374 = new TabletEventQueue(stage);
               var_554 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_447;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_184.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_184.removeChild(IGraphicContextHost(this.var_136).getGraphicContext(true) as DisplayObject);
            this.var_136.destroy();
            this.var_136 = null;
            this.var_1482.destroy();
            this.var_1482 = null;
            if(this.var_1229 is IDisposable)
            {
               IDisposable(this.var_1229).dispose();
            }
            this.var_1229 = null;
            this.var_1481.dispose();
            this.var_1481 = null;
            var_163 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1228;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1973;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1228 = param2;
         this.var_1973 = param1;
         if(this.var_2785)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1228 = null;
         this.var_1973 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1229;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1481;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2731;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_136;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1477 == null)
         {
            var_1477 = new MouseCursorControl(this.var_184);
         }
         return var_1477;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_136.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1381,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1482;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_136,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_136)
         {
            this.var_136 = null;
         }
         if(param1.state != WindowState.const_522)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_163.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_529 = true;
         if(this.var_1228)
         {
            throw this.var_1228;
         }
         var_554.process(this._eventProcessorState,var_374);
         this.var_529 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2134 = true;
         var_163.update(param1);
         this.var_2134 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_136 != null && !this.var_136.disposed)
         {
            if(this.var_184 is Stage)
            {
               this.var_136.width = Stage(this.var_184).stageWidth;
               this.var_136.height = Stage(this.var_184).stageHeight;
            }
            else
            {
               this.var_136.width = this.var_184.width;
               this.var_136.height = this.var_184.height;
            }
         }
      }
   }
}
