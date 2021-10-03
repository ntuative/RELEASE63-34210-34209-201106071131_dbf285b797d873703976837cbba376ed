package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2049:int = 1;
      
      public static const const_1915:int = 2;
       
      
      private var var_910:String;
      
      private var var_2705:int;
      
      private var var_2702:int;
      
      private var var_2707:int;
      
      private var var_2703:int;
      
      private var var_2709:Boolean;
      
      private var var_2494:Boolean;
      
      private var var_2560:int;
      
      private var var_2559:int;
      
      private var var_2706:Boolean;
      
      private var var_2704:int;
      
      private var var_2708:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_910 = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_2702 = param1.readInteger();
         this.var_2707 = param1.readInteger();
         this.var_2703 = param1.readInteger();
         this.var_2709 = param1.readBoolean();
         this.var_2494 = param1.readBoolean();
         this.var_2560 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_2706 = param1.readBoolean();
         this.var_2704 = param1.readInteger();
         this.var_2708 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_910;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2705;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2702;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2707;
      }
      
      public function get responseType() : int
      {
         return this.var_2703;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2709;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2494;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2560;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2559;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2706;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2704;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2708;
      }
   }
}
