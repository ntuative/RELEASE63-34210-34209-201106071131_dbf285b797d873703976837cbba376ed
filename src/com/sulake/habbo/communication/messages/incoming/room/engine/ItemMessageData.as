package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2698:Boolean = false;
      
      private var var_2700:int = 0;
      
      private var var_2699:int = 0;
      
      private var var_2501:int = 0;
      
      private var var_2498:int = 0;
      
      private var var_182:Number = 0;
      
      private var var_181:Number = 0;
      
      private var var_430:String = "";
      
      private var _type:int = 0;
      
      private var var_3032:String = "";
      
      private var var_1463:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_201:Boolean = false;
      
      private var var_2536:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2698 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2698;
      }
      
      public function get wallX() : Number
      {
         return this.var_2700;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_2700 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2699;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_2699 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2501;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_2501 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2498;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_2498 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_182;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_182 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_181;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_201)
         {
            this.var_181 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_430;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_430 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_201)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_201)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_201)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2536;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_201)
         {
            this.var_2536 = param1;
         }
      }
   }
}
