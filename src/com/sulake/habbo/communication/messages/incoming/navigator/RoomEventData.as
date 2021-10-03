package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2040:Boolean;
      
      private var var_2791:int;
      
      private var var_2794:String;
      
      private var var_391:int;
      
      private var var_2792:int;
      
      private var var_2086:String;
      
      private var var_2793:String;
      
      private var var_2795:String;
      
      private var var_907:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_907 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2040 = false;
            return;
         }
         this.var_2040 = true;
         this.var_2791 = int(_loc2_);
         this.var_2794 = param1.readString();
         this.var_391 = int(param1.readString());
         this.var_2792 = param1.readInteger();
         this.var_2086 = param1.readString();
         this.var_2793 = param1.readString();
         this.var_2795 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_907.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_907 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2791;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2794;
      }
      
      public function get flatId() : int
      {
         return this.var_391;
      }
      
      public function get eventType() : int
      {
         return this.var_2792;
      }
      
      public function get eventName() : String
      {
         return this.var_2086;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2793;
      }
      
      public function get creationTime() : String
      {
         return this.var_2795;
      }
      
      public function get tags() : Array
      {
         return this.var_907;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2040;
      }
   }
}
