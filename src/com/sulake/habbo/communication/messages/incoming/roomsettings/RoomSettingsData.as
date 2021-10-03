package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_509:int = 0;
      
      public static const const_229:int = 1;
      
      public static const const_130:int = 2;
      
      public static const const_1010:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1773:String;
      
      private var var_2465:int;
      
      private var var_1592:int;
      
      private var var_2462:int;
      
      private var var_2642:int;
      
      private var var_907:Array;
      
      private var var_2467:Array;
      
      private var var_2643:int;
      
      private var var_2460:Boolean;
      
      private var var_2466:Boolean;
      
      private var var_2461:Boolean;
      
      private var var_2463:Boolean;
      
      private var var_2464:int;
      
      private var var_2468:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2460;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2460 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2466;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2466 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2461;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2461 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2463;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2463 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2464;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2464 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2468;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2468 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1773;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1773 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2465;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1592;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1592 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2462;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2462 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2642;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2642 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_907;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_907 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2467;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2467 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2643;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2643 = param1;
      }
   }
}
