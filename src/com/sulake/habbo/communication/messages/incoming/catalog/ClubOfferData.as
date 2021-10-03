package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1204:int;
      
      private var var_1679:String;
      
      private var var_1678:int;
      
      private var _upgrade:Boolean;
      
      private var var_2226:Boolean;
      
      private var var_2225:int;
      
      private var var_2229:int;
      
      private var var_2227:int;
      
      private var var_2230:int;
      
      private var var_2228:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1204 = param1.readInteger();
         this.var_1679 = param1.readString();
         this.var_1678 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2226 = param1.readBoolean();
         this.var_2225 = param1.readInteger();
         this.var_2229 = param1.readInteger();
         this.var_2227 = param1.readInteger();
         this.var_2230 = param1.readInteger();
         this.var_2228 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1204;
      }
      
      public function get productCode() : String
      {
         return this.var_1679;
      }
      
      public function get price() : int
      {
         return this.var_1678;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2226;
      }
      
      public function get periods() : int
      {
         return this.var_2225;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2229;
      }
      
      public function get year() : int
      {
         return this.var_2227;
      }
      
      public function get month() : int
      {
         return this.var_2230;
      }
      
      public function get day() : int
      {
         return this.var_2228;
      }
   }
}
