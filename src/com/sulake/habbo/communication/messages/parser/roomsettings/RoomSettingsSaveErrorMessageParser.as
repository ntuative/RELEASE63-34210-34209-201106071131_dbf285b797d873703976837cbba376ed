package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2062:int = 1;
      
      public static const const_2066:int = 2;
      
      public static const const_2137:int = 3;
      
      public static const const_2224:int = 4;
      
      public static const const_1834:int = 5;
      
      public static const const_2075:int = 6;
      
      public static const const_1682:int = 7;
      
      public static const const_1952:int = 8;
      
      public static const const_2077:int = 9;
      
      public static const const_1918:int = 10;
      
      public static const const_1728:int = 11;
      
      public static const const_1953:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1718:int;
      
      private var var_712:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1718 = param1.readInteger();
         this.var_712 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1718;
      }
      
      public function get info() : String
      {
         return this.var_712;
      }
   }
}
