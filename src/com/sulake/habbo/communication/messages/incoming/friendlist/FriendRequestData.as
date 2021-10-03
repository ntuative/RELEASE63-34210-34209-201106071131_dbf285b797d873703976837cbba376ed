package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1365:int;
      
      private var var_2257:String;
      
      private var var_2258:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1365 = param1.readInteger();
         this.var_2257 = param1.readString();
         this.var_2258 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1365;
      }
      
      public function get requesterName() : String
      {
         return this.var_2257;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2258;
      }
   }
}
