package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1976:int;
      
      private var _name:String;
      
      private var var_1334:int;
      
      private var var_2887:int;
      
      private var var_2448:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_655:String;
      
      private var var_2888:int;
      
      private var var_2889:int;
      
      private var var_2886:int;
      
      private var var_2565:int;
      
      private var var_2430:int;
      
      private var _ownerName:String;
      
      private var var_517:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1976;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1334;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2887;
      }
      
      public function get experience() : int
      {
         return this.var_2448;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2888;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2889;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2886;
      }
      
      public function get respect() : int
      {
         return this.var_2565;
      }
      
      public function get ownerId() : int
      {
         return this.var_2430;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_517;
      }
      
      public function flush() : Boolean
      {
         this.var_1976 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1976 = param1.readInteger();
         this._name = param1.readString();
         this.var_1334 = param1.readInteger();
         this.var_2887 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this.var_2888 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2889 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2886 = param1.readInteger();
         this.var_655 = param1.readString();
         this.var_2565 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         this.var_517 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
