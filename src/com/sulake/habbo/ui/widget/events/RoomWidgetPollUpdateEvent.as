package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_158:String = "RWPUW_OFFER";
      
      public static const const_71:String = "RWPUW_ERROR";
      
      public static const const_165:String = "RWPUW_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_2045:String;
      
      private var var_1456:int = 0;
      
      private var var_1785:String = "";
      
      private var var_1786:String = "";
      
      private var var_1457:Array = null;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this._id = param1;
         super(param2,param3,param4);
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
