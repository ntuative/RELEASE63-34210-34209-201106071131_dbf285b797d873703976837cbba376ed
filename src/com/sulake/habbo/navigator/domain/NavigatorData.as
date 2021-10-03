package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2004:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_208:MsgWithRequestId;
      
      private var var_610:RoomEventData;
      
      private var var_2332:Boolean;
      
      private var var_2338:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2294:int;
      
      private var var_260:GuestRoomData;
      
      private var var_928:PublicRoomShortData;
      
      private var var_2334:int;
      
      private var var_2335:Boolean;
      
      private var var_2336:int;
      
      private var var_2330:Boolean;
      
      private var var_1731:int;
      
      private var var_2337:Boolean;
      
      private var var_1435:Array;
      
      private var var_1434:Array;
      
      private var var_2331:int;
      
      private var var_1436:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1156:Boolean;
      
      private var var_2329:int;
      
      private var var_2328:Boolean;
      
      private var var_2333:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1435 = new Array();
         this.var_1434 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_260 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_260 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_928 = null;
         this.var_260 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_928 = param1.publicSpace;
            this.var_610 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_610 != null)
         {
            this.var_610.dispose();
            this.var_610 = null;
         }
         if(this.var_928 != null)
         {
            this.var_928.dispose();
            this.var_928 = null;
         }
         if(this.var_260 != null)
         {
            this.var_260.dispose();
            this.var_260 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_260 != null)
         {
            this.var_260.dispose();
         }
         this.var_260 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_610 != null)
         {
            this.var_610.dispose();
         }
         this.var_610 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_208 != null && this.var_208 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_208 != null && this.var_208 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_208 != null && this.var_208 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_208 = param1;
         this.var_1156 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_208 = param1;
         this.var_1156 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_208 = param1;
         this.var_1156 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_208 == null)
         {
            return;
         }
         this.var_208.dispose();
         this.var_208 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_208 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_208 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_208 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_610;
      }
      
      public function get avatarId() : int
      {
         return this.var_2294;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2332;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2338;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_260;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_928;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2335;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2336;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1731;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2330;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2329;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2334;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2337;
      }
      
      public function get adIndex() : int
      {
         return this.var_2333;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2328;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2336 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2335 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2332 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2338 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2330 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1731 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2329 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2334 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2337 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2333 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2328 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1435 = param1;
         this.var_1434 = new Array();
         for each(_loc2_ in this.var_1435)
         {
            if(_loc2_.visible)
            {
               this.var_1434.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1435;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1434;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2331 = param1.limit;
         this.var_1436 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1436 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_260.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_260 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_260.flatId;
         return this.var_1731 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1436 >= this.var_2331;
      }
      
      public function startLoading() : void
      {
         this.var_1156 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1156;
      }
   }
}
