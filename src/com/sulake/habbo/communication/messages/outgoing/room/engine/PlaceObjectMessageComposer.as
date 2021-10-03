package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_226:int;
      
      private var var_2237:int;
      
      private var var_1943:String;
      
      private var _x:int = 0;
      
      private var var_182:int = 0;
      
      private var var_430:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_226 = param1;
         this.var_2237 = param2;
         this.var_1943 = param3;
         this._x = param4;
         this.var_182 = param5;
         this.var_430 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2237)
         {
            case RoomObjectCategoryEnum.const_27:
               return [this.var_226 + " " + this._x + " " + this.var_182 + " " + this.var_430];
            case RoomObjectCategoryEnum.const_26:
               return [this.var_226 + " " + this.var_1943];
            default:
               return [];
         }
      }
   }
}
