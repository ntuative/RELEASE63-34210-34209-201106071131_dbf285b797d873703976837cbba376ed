package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ViralFurniStatusMessageComposer implements IMessageComposer
   {
       
      
      private var var_226:int;
      
      public function ViralFurniStatusMessageComposer(param1:int)
      {
         super();
         this.var_226 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_226];
      }
   }
}
