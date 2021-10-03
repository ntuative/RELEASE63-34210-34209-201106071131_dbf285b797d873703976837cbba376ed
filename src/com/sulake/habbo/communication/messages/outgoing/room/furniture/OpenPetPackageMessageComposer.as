package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_226:int;
      
      private var var_2402:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_226 = param1;
         this.var_2402 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_226,this.var_2402];
      }
      
      public function dispose() : void
      {
      }
   }
}
