package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1824:int;
      
      private var var_2895:String;
      
      private var var_323:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1824 = param1.readInteger();
         this.var_2895 = param1.readString();
         this.var_323 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1824;
      }
      
      public function get nodeName() : String
      {
         return this.var_2895;
      }
      
      public function get visible() : Boolean
      {
         return this.var_323;
      }
   }
}
