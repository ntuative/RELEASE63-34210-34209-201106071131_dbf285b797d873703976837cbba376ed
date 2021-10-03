package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1854:Boolean;
      
      private var var_974:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1854 = param1.readBoolean();
         this.var_974 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1854 + ", " + this.var_974.id + ", " + this.var_974.name + ", " + this.var_974.type + ", " + this.var_974.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1854;
      }
      
      public function get pet() : PetData
      {
         return this.var_974;
      }
   }
}
