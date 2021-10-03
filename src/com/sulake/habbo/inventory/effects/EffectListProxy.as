package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_76:EffectsModel;
      
      private var var_145:int;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         this.var_76 = param1;
         this.var_145 = param2;
      }
      
      public function dispose() : void
      {
         this.var_76 = null;
      }
      
      public function getDrawableList() : Array
      {
         return this.var_76.getEffects(this.var_145);
      }
   }
}
