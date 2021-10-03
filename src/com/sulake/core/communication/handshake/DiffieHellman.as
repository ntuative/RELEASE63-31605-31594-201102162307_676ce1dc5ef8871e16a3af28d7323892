package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_948:BigInteger;
      
      private var var_2094:BigInteger;
      
      private var var_1635:BigInteger;
      
      private var var_2238:BigInteger;
      
      private var var_1301:BigInteger;
      
      private var var_1634:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1301 = param1;
         this.var_1634 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1301.toString() + ",generator: " + this.var_1634.toString() + ",secret: " + param1);
         this.var_948 = new BigInteger();
         this.var_948.fromRadix(param1,param2);
         this.var_2094 = this.var_1634.modPow(this.var_948,this.var_1301);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1635 = new BigInteger();
         this.var_1635.fromRadix(param1,param2);
         this.var_2238 = this.var_1635.modPow(this.var_948,this.var_1301);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2094.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2238.toRadix(param1);
      }
   }
}
