package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_183:IHabboConfigurationManager = null;
      
      private var var_536:int = 0;
      
      private var var_494:Number = 0;
      
      private var var_2770:Array;
      
      private var var_1387:String = "";
      
      private var var_1777:String = "";
      
      private var var_2159:String = "";
      
      private var var_2162:String = "";
      
      private var var_1591:Boolean = false;
      
      private var var_1774:GarbageMonitor = null;
      
      private var var_1385:int = 0;
      
      private var var_2451:Boolean;
      
      private var var_1778:int = 1000;
      
      private var var_1388:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1775:int = 0;
      
      private var var_1776:int = 10;
      
      private var var_1386:int = 0;
      
      private var var_2452:Number = 0.15;
      
      private var var_2450:Boolean = true;
      
      private var var_2449:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2770 = [];
         super();
         this.var_1777 = Capabilities.version;
         this.var_2159 = Capabilities.os;
         this.var_1591 = Capabilities.isDebugger;
         this.var_1387 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1387 == null)
         {
            this.var_1387 = "unknown";
         }
         this.var_1774 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1775 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1777;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_494;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1778 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1776 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_183 = param1;
         this._reportInterval = int(this.var_183.getKey("performancetest.interval","60"));
         this.var_1778 = int(this.var_183.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1776 = int(this.var_183.getKey("performancetest.reportlimit","10"));
         this.var_2452 = Number(this.var_183.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2450 = Boolean(int(this.var_183.getKey("performancetest.distribution.enabled","1")));
         this.var_2451 = Boolean(this.var_183.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1774.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1774.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2451)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1385;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1778)
         {
            ++this.var_1388;
            _loc3_ = true;
         }
         else
         {
            ++this.var_536;
            if(this.var_536 <= 1)
            {
               this.var_494 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_536);
               this.var_494 = this.var_494 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1775 > this._reportInterval * 1000 && this.var_1386 < this.var_1776)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_494);
            _loc6_ = true;
            if(this.var_2450 && this.var_1386 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2449,this.var_494);
               if(_loc7_ < this.var_2452)
               {
                  _loc6_ = false;
               }
            }
            this.var_1775 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2449 = this.var_494;
               if(this.sendReport(param2))
               {
                  ++this.var_1386;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1387,this.var_1777,this.var_2159,this.var_2162,this.var_1591,_loc5_,_loc4_,this.var_1385,this.var_494,this.var_1388);
            this._connection.send(_loc2_);
            this.var_1385 = 0;
            this.var_494 = 0;
            this.var_536 = 0;
            this.var_1388 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
