package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1546:IID;
      
      private var var_1963:String;
      
      private var var_119:IUnknown;
      
      private var var_826:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1546 = param1;
         this.var_1963 = getQualifiedClassName(this.var_1546);
         this.var_119 = param2;
         this.var_826 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1546;
      }
      
      public function get iis() : String
      {
         return this.var_1963;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_119;
      }
      
      public function get references() : uint
      {
         return this.var_826;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_119 == null;
      }
      
      public function dispose() : void
      {
         this.var_1546 = null;
         this.var_1963 = null;
         this.var_119 = null;
         this.var_826 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_826;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_826) : uint(0);
      }
   }
}
