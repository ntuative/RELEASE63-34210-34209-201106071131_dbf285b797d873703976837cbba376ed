package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2827:String;
      
      private var var_2053:String;
      
      private var var_2826:String;
      
      private var var_2052:Boolean;
      
      private var var_2054:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2827 = String(param1["set-type"]);
         this.var_2053 = String(param1["flipped-set-type"]);
         this.var_2826 = String(param1["remove-set-type"]);
         this.var_2052 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2054 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2054;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2054 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2827;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2053;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2826;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2052;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2052 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2053 = param1;
      }
   }
}
