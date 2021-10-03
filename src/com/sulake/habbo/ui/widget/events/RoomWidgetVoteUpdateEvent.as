package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_163:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_154:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1328:String;
      
      private var var_1518:Array;
      
      private var var_1321:Array;
      
      private var var_2146:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1328 = param2;
         this.var_1518 = param3;
         this.var_1321 = param4;
         if(this.var_1321 == null)
         {
            this.var_1321 = [];
         }
         this.var_2146 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1328;
      }
      
      public function get choices() : Array
      {
         return this.var_1518.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1321.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2146;
      }
   }
}
