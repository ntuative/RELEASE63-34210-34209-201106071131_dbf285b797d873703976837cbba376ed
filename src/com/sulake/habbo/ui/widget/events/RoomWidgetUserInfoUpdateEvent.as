package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_112:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_143:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_713:int = 2;
      
      public static const const_944:int = 3;
      
      public static const const_1906:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1690:String = "";
      
      private var var_2407:int;
      
      private var var_2476:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_655:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_241:Array;
      
      private var var_1650:int = 0;
      
      private var var_2263:String = "";
      
      private var var_2264:int = 0;
      
      private var var_2262:int = 0;
      
      private var var_1985:Boolean = false;
      
      private var var_1687:String = "";
      
      private var var_2204:Boolean = false;
      
      private var var_2478:Boolean = false;
      
      private var var_2483:Boolean = true;
      
      private var var_1160:int = 0;
      
      private var var_2477:Boolean = false;
      
      private var var_2479:Boolean = false;
      
      private var var_2481:Boolean = false;
      
      private var var_2475:Boolean = false;
      
      private var var_2480:Boolean = false;
      
      private var var_2482:Boolean = false;
      
      private var var_2484:int = 0;
      
      private var var_1984:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_241 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1690 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1690;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2407;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2476 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2476;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2485 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2485;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_655 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_241 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_241;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1650 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1650;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2263 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2263;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2478 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2478;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1160 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1160;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2477 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2477;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2479 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2479;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2481 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2481;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2475 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2475;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2480 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2480;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2482 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2482;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2484;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2483 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2483;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1984 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1984;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2264 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2264;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2262 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2262;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1985 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1985;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1687 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1687;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2204 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2204;
      }
   }
}
