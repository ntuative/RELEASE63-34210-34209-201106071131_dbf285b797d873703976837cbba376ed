package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_158:String = "RSPE_POLL_OFFER";
      
      public static const const_71:String = "RSPE_POLL_ERROR";
      
      public static const const_165:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_2045:String;
      
      private var var_1456:int = 0;
      
      private var var_1785:String = "";
      
      private var var_1786:String = "";
      
      private var var_1457:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_2045;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_2045 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1456;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1456 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1785;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1785 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1786;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1786 = param1;
      }
      
      public function get method_1() : Array
      {
         return this.var_1457;
      }
      
      public function set method_1(param1:Array) : void
      {
         this.var_1457 = param1;
      }
   }
}
