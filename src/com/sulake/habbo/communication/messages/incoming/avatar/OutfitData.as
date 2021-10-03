package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1518:int;
      
      private var var_2521:String;
      
      private var var_813:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1518 = param1.readInteger();
         this.var_2521 = param1.readString();
         this.var_813 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1518;
      }
      
      public function get figureString() : String
      {
         return this.var_2521;
      }
      
      public function get gender() : String
      {
         return this.var_813;
      }
   }
}
