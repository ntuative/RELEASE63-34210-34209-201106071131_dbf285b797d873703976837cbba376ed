package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import flash.display.BitmapData;
   
   public class RoomObjectRoomAdUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1318:String = "RORUM_ROOM_AD_ACTIVATE";
      
      public static const const_1346:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADED";
      
      public static const const_1284:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADING_FAILED";
       
      
      private var _type:String;
      
      private var var_472:String;
      
      private var var_1371:String;
      
      private var var_226:int;
      
      private var _bitmapData:BitmapData;
      
      public function RoomObjectRoomAdUpdateMessage(param1:String, param2:String, param3:String, param4:int = -1, param5:BitmapData = null)
      {
         super(null,null);
         this._type = param1;
         this.var_472 = param2;
         this.var_1371 = param3;
         this.var_226 = param4;
         this._bitmapData = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get asset() : String
      {
         return this.var_472;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1371;
      }
      
      public function get objectId() : int
      {
         return this.var_226;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
   }
}
