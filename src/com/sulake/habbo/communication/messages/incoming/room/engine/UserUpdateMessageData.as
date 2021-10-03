package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_181:Number = 0;
      
      private var var_2728:Number = 0;
      
      private var var_2732:Number = 0;
      
      private var var_2730:Number = 0;
      
      private var var_2729:Number = 0;
      
      private var var_430:int = 0;
      
      private var var_2680:int = 0;
      
      private var var_344:Array;
      
      private var var_2731:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_344 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_182 = param3;
         this.var_181 = param4;
         this.var_2728 = param5;
         this.var_430 = param6;
         this.var_2680 = param7;
         this.var_2732 = param8;
         this.var_2730 = param9;
         this.var_2729 = param10;
         this.var_2731 = param11;
         this.var_344 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_182;
      }
      
      public function get z() : Number
      {
         return this.var_181;
      }
      
      public function get localZ() : Number
      {
         return this.var_2728;
      }
      
      public function get targetX() : Number
      {
         return this.var_2732;
      }
      
      public function get targetY() : Number
      {
         return this.var_2730;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2729;
      }
      
      public function get dir() : int
      {
         return this.var_430;
      }
      
      public function get dirHead() : int
      {
         return this.var_2680;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2731;
      }
      
      public function get actions() : Array
      {
         return this.var_344.slice();
      }
   }
}
