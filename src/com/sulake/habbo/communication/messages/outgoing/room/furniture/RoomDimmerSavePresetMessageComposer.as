package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2346:int;
      
      private var var_2347:int;
      
      private var var_2561:String;
      
      private var var_2562:int;
      
      private var var_2563:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2346 = param1;
         this.var_2347 = param2;
         this.var_2561 = param3;
         this.var_2562 = param4;
         this.var_2563 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2346,this.var_2347,this.var_2561,this.var_2562,int(this.var_2563)];
      }
      
      public function dispose() : void
      {
      }
   }
}
