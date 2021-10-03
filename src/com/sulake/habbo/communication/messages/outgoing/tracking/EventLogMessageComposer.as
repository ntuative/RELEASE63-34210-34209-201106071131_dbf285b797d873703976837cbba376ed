package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class EventLogMessageComposer implements IMessageComposer
   {
       
      
      private var _category:String;
      
      private var _type:String;
      
      private var _action:String;
      
      private var var_1463:String;
      
      public function EventLogMessageComposer(param1:String, param2:String, param3:String, param4:String = "")
      {
         super();
         if(param1 == null || param2 == null || param3 == null || param4 == null)
         {
         }
         this._category = !!param1 ? param1 : "";
         this._type = !!param2 ? param2 : "";
         this._action = !!param3 ? param3 : "";
         this.var_1463 = !!param4 ? param4 : "";
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this._category,this._type,this._action,this.var_1463];
      }
   }
}
