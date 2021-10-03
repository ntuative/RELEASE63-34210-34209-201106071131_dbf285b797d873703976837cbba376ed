package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1104:BigInteger;
      
      private var var_2659:BigInteger;
      
      private var var_1957:BigInteger;
      
      private var var_2691:BigInteger;
      
      private var var_1543:BigInteger;
      
      private var var_1958:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1543 = param1;
         this.var_1958 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1543.toString() + ",generator: " + this.var_1958.toString() + ",secret: " + param1);
         this.var_1104 = new BigInteger();
         this.var_1104.fromRadix(param1,param2);
         this.var_2659 = this.var_1958.modPow(this.var_1104,this.var_1543);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1957 = new BigInteger();
         this.var_1957.fromRadix(param1,param2);
         this.var_2691 = this.var_1957.modPow(this.var_1104,this.var_1543);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2659.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2691.toRadix(param1);
      }
   }
}
