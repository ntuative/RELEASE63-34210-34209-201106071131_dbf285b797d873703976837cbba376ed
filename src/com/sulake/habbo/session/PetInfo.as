package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1976:int;
      
      private var var_1334:int;
      
      private var var_2568:int;
      
      private var var_2448:int;
      
      private var var_2566:int;
      
      private var _energy:int;
      
      private var var_2567:int;
      
      private var _nutrition:int;
      
      private var var_2569:int;
      
      private var var_2430:int;
      
      private var _ownerName:String;
      
      private var var_2565:int;
      
      private var var_517:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1976;
      }
      
      public function get level() : int
      {
         return this.var_1334;
      }
      
      public function get levelMax() : int
      {
         return this.var_2568;
      }
      
      public function get experience() : int
      {
         return this.var_2448;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2566;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2567;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2569;
      }
      
      public function get ownerId() : int
      {
         return this.var_2430;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2565;
      }
      
      public function get age() : int
      {
         return this.var_517;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1976 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1334 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2568 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2448 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2566 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2567 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2569 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2430 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2565 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_517 = param1;
      }
   }
}
