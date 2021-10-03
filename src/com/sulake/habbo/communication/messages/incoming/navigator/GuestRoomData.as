package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_391:int;
      
      private var var_854:Boolean;
      
      private var var_1077:String;
      
      private var _ownerName:String;
      
      private var var_2465:int;
      
      private var var_2374:int;
      
      private var var_2553:int;
      
      private var var_1773:String;
      
      private var var_2555:int;
      
      private var var_2558:Boolean;
      
      private var var_780:int;
      
      private var var_1592:int;
      
      private var var_2554:String;
      
      private var var_907:Array;
      
      private var var_2556:RoomThumbnailData;
      
      private var var_2460:Boolean;
      
      private var var_2557:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_907 = new Array();
         super();
         this.var_391 = param1.readInteger();
         this.var_854 = param1.readBoolean();
         this.var_1077 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2465 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this.var_2553 = param1.readInteger();
         this.var_1773 = param1.readString();
         this.var_2555 = param1.readInteger();
         this.var_2558 = param1.readBoolean();
         this.var_780 = param1.readInteger();
         this.var_1592 = param1.readInteger();
         this.var_2554 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_907.push(_loc4_);
            _loc3_++;
         }
         this.var_2556 = new RoomThumbnailData(param1);
         this.var_2460 = param1.readBoolean();
         this.var_2557 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_907 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_391;
      }
      
      public function get event() : Boolean
      {
         return this.var_854;
      }
      
      public function get roomName() : String
      {
         return this.var_1077;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2465;
      }
      
      public function get userCount() : int
      {
         return this.var_2374;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2553;
      }
      
      public function get description() : String
      {
         return this.var_1773;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2555;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2558;
      }
      
      public function get score() : int
      {
         return this.var_780;
      }
      
      public function get categoryId() : int
      {
         return this.var_1592;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2554;
      }
      
      public function get tags() : Array
      {
         return this.var_907;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2556;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2460;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2557;
      }
   }
}
