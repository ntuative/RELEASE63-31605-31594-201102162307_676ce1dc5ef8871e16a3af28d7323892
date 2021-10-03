package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_173:String;
      
      private var _text:ITextWindow;
      
      private var var_299:int;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function test(param1:int) : Boolean
      {
         this._text.text = this.var_173.substring(0,param1) + "...";
         return this._text.textWidth > this.var_299;
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         this.var_173 = param1;
         this._text = param2;
         this.var_299 = param3;
      }
   }
}
