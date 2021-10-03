package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.habbo.avatar.common.ISideContentView;
   
   public class WardrobeView implements ISideContentView
   {
       
      
      private var _window:IWindowContainer;
      
      private var var_76:WardrobeModel;
      
      private var var_998:IItemListWindow;
      
      private var var_1253:IItemListWindow;
      
      public function WardrobeView(param1:WardrobeModel)
      {
         super();
         this.var_76 = param1;
         var _loc2_:XmlAsset = this.var_76.controller.manager.assets.getAssetByName("avatareditor_wardrobe_base") as XmlAsset;
         this._window = this.var_76.controller.manager.windowManager.buildFromXML(_loc2_.content as XML) as IWindowContainer;
         this.var_998 = this._window.findChildByName("hc_slots") as IItemListWindow;
         this.var_1253 = this._window.findChildByName("vip_slots") as IItemListWindow;
         this._window.visible = false;
         this.update();
      }
      
      public function dispose() : void
      {
         this.var_76 = null;
         this.var_998 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         if(this.var_998)
         {
            this.var_998.removeListItems();
         }
         if(this.var_1253)
         {
            this.var_1253.removeListItems();
         }
         var _loc1_:Array = this.var_76.slots;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc3_ < 5)
            {
               if(this.var_998)
               {
                  this.var_998.addListItem(_loc2_.view);
                  _loc2_.view.visible = true;
               }
            }
            else if(this.var_1253)
            {
               this.var_1253.addListItem(_loc2_.view);
               _loc2_.view.visible = true;
            }
            _loc3_++;
         }
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return this._window;
      }
   }
}
