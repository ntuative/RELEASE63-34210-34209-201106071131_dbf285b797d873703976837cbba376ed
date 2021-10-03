package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_181:Number = 0;
      
      private var var_430:int = 0;
      
      private var var_547:int = 0;
      
      private var var_666:int = 0;
      
      private var _type:int = 0;
      
      private var var_3032:String = "";
      
      private var var_1463:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2537:int = 0;
      
      private var var_2536:Boolean;
      
      private var var_2578:String = null;
      
      private var var_201:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_201)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_430;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_430 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_547;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_547 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_666;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_666 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2578;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_201)
         {
            this.var_2578 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1463;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_1463 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2537;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_201)
         {
            this.var_2537 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2536;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2536 = param1;
      }
   }
}
