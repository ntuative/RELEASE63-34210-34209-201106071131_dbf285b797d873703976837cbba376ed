package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SessionParamsMessageParser implements IMessageParser
   {
       
      
      protected var var_2198:Boolean;
      
      protected var var_2201:Boolean;
      
      protected var var_2767:String;
      
      protected var var_2200:Boolean;
      
      protected var var_2199:Boolean;
      
      protected var var_2197:Boolean;
      
      protected var _confPartnerIntegration:Boolean;
      
      protected var var_2981:Boolean;
      
      protected var var_2983:String;
      
      protected var var_2982:Boolean;
      
      public function SessionParamsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_2198 = false;
         this.var_2201 = false;
         this.var_2767 = "";
         this.var_2200 = false;
         this.var_2199 = false;
         this.var_2197 = false;
         this._confPartnerIntegration = false;
         this.var_2981 = false;
         this.var_2983 = "";
         this.var_2982 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:int = param1.readInteger();
         Logger.log("[Parser.SessionParams] Got " + _loc2_ + " pairs");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readInteger();
            Logger.log("[Parser.SessionParams] Got id: " + _loc4_);
            switch(_loc4_)
            {
               case 0:
                  _loc5_ = param1.readInteger();
                  this.var_2198 = _loc5_ > 0;
                  break;
               case 1:
                  _loc5_ = param1.readInteger();
                  this.var_2201 = _loc5_ > 0;
                  break;
               case 2:
                  _loc5_ = param1.readInteger();
                  this.var_2200 = _loc5_ > 0;
                  break;
               case 3:
                  _loc5_ = param1.readInteger();
                  this.var_2199 = _loc5_ > 0;
                  break;
               case 4:
                  _loc5_ = param1.readInteger();
                  this.var_2197 = _loc5_ > 0;
                  break;
               case 5:
                  _loc6_ = param1.readString();
                  break;
               case 6:
                  _loc5_ = param1.readInteger();
                  break;
               case 7:
                  _loc5_ = param1.readInteger();
                  break;
               case 8:
                  _loc7_ = param1.readString();
                  break;
               case 9:
                  _loc5_ = param1.readInteger();
                  break;
               default:
                  Logger.log("Unknown id: " + _loc4_);
                  break;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function get coppa() : Boolean
      {
         return this.var_2198;
      }
      
      public function get voucher() : Boolean
      {
         return this.var_2201;
      }
      
      public function get parentEmailRequired() : Boolean
      {
         return this.var_2200;
      }
      
      public function get parentEmailRequiredInReRegistration() : Boolean
      {
         return this.var_2199;
      }
      
      public function get allowDirectEmail() : Boolean
      {
         return this.var_2197;
      }
      
      public function get date() : String
      {
         return this.var_2767;
      }
      
      public function get confPartnerIntegration() : Boolean
      {
         return this._confPartnerIntegration;
      }
      
      public function get allowProfileEditing() : Boolean
      {
         return this.var_2981;
      }
      
      public function get tracking_header() : String
      {
         return this.var_2983;
      }
      
      public function get tutorialEnabled() : Boolean
      {
         return this.var_2982;
      }
   }
}
