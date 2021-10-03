package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_655:String;
      
      private var var_947:String;
      
      private var var_2800:String;
      
      private var var_1687:String;
      
      private var var_2797:int;
      
      private var var_2798:String;
      
      private var var_2796:int;
      
      private var var_2799:int;
      
      private var var_2397:int;
      
      private var var_1160:int;
      
      private var var_749:int;
      
      private var _identityId:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_655 = param1.readString();
         this.var_947 = param1.readString();
         this.var_2800 = param1.readString();
         this.var_1687 = param1.readString();
         this.var_2797 = param1.readInteger();
         this.var_2798 = param1.readString();
         this.var_2796 = param1.readInteger();
         this.var_2799 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         this.var_1160 = param1.readInteger();
         this.var_749 = param1.readInteger();
         this._identityId = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_655;
      }
      
      public function get sex() : String
      {
         return this.var_947;
      }
      
      public function get customData() : String
      {
         return this.var_2800;
      }
      
      public function get realName() : String
      {
         return this.var_1687;
      }
      
      public function get tickets() : int
      {
         return this.var_2797;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2798;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2796;
      }
      
      public function get directMail() : int
      {
         return this.var_2799;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2397;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1160;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_749;
      }
      
      public function get identityId() : int
      {
         return this._identityId;
      }
   }
}
