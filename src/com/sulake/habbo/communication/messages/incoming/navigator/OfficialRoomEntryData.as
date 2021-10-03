package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1148:int = 1;
      
      public static const const_999:int = 2;
      
      public static const const_998:int = 3;
      
      public static const const_1976:int = 4;
       
      
      private var _index:int;
      
      private var var_2454:String;
      
      private var var_2455:String;
      
      private var var_2453:Boolean;
      
      private var var_2452:String;
      
      private var var_972:String;
      
      private var var_2456:int;
      
      private var var_2374:int;
      
      private var _type:int;
      
      private var var_2252:String;
      
      private var var_958:GuestRoomData;
      
      private var var_957:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2454 = param1.readString();
         this.var_2455 = param1.readString();
         this.var_2453 = param1.readInteger() == 1;
         this.var_2452 = param1.readString();
         this.var_972 = param1.readString();
         this.var_2456 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1148)
         {
            this.var_2252 = param1.readString();
         }
         else if(this._type == const_998)
         {
            this.var_957 = new PublicRoomData(param1);
         }
         else if(this._type == const_999)
         {
            this.var_958 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_958 != null)
         {
            this.var_958.dispose();
            this.var_958 = null;
         }
         if(this.var_957 != null)
         {
            this.var_957.dispose();
            this.var_957 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2454;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2455;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2453;
      }
      
      public function get picText() : String
      {
         return this.var_2452;
      }
      
      public function get picRef() : String
      {
         return this.var_972;
      }
      
      public function get folderId() : int
      {
         return this.var_2456;
      }
      
      public function get tag() : String
      {
         return this.var_2252;
      }
      
      public function get userCount() : int
      {
         return this.var_2374;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_958;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_957;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1148)
         {
            return 0;
         }
         if(this.type == const_999)
         {
            return this.var_958.maxUserCount;
         }
         if(this.type == const_998)
         {
            return this.var_957.maxUsers;
         }
         return 0;
      }
   }
}
