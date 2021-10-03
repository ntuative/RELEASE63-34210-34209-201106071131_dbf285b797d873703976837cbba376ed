package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_181:Number = 0;
      
      private var var_430:int = 0;
      
      private var var_547:int = 0;
      
      private var var_666:int = 0;
      
      private var var_201:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_201 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_201)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_201)
         {
            this._name = param1;
         }
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
   }
}
