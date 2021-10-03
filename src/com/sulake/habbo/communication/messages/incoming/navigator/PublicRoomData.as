package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2679:String;
      
      private var var_2639:int;
      
      private var var_2647:int;
      
      private var var_2640:String;
      
      private var var_2911:int;
      
      private var var_1824:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2679 = param1.readString();
         this.var_2639 = param1.readInteger();
         this.var_2647 = param1.readInteger();
         this.var_2640 = param1.readString();
         this.var_2911 = param1.readInteger();
         this.var_1824 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2679;
      }
      
      public function get unitPort() : int
      {
         return this.var_2639;
      }
      
      public function get worldId() : int
      {
         return this.var_2647;
      }
      
      public function get castLibs() : String
      {
         return this.var_2640;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2911;
      }
      
      public function get nodeId() : int
      {
         return this.var_1824;
      }
   }
}
