package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetUpdateRoomPreviewEvent;
   import flash.utils.Dictionary;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
      
      private static const const_110:String = "floor";
      
      private static const const_233:String = "wallpaper";
      
      private static const TYPE_LANDSCAPE:String = "landscape";
       
      
      private var var_1249:Array;
      
      private var var_653:Array;
      
      private var var_444:int = 0;
      
      private var var_442:int = 0;
      
      private var var_989:int = 0;
      
      private var _floorType:String = "default";
      
      private var var_1248:Array;
      
      private var var_808:Array;
      
      private var var_446:int = 0;
      
      private var var_443:int = 0;
      
      private var var_988:int = 0;
      
      private var var_1519:String = "default";
      
      private var _landscapeOffers:Array;
      
      private var var_809:Array;
      
      private var var_445:int = 0;
      
      private var var_447:int = 0;
      
      private var var_990:int = 0;
      
      private var var_1520:String = "1.1";
      
      private var var_987:Dictionary;
      
      private var var_1246:Dictionary;
      
      private var var_1247:Dictionary;
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         this.var_1249 = [];
         this.var_653 = [];
         this.var_1248 = [];
         this.var_808 = [];
         this._landscapeOffers = [];
         this.var_809 = [];
         super(param1);
      }
      
      override public function dispose() : void
      {
         this.var_987 = null;
         this.var_1246 = null;
         this.var_1247 = null;
         this.var_1249 = null;
         this.var_653 = null;
         this.var_1248 = null;
         this.var_808 = null;
         this._landscapeOffers = null;
         this.var_809 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!super.init())
         {
            return false;
         }
         if(window == null)
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ == null)
         {
            return false;
         }
         var _loc2_:XML = _loc1_.content as XML;
         if(_loc2_ == null)
         {
            return false;
         }
         this.var_987 = this.parseElements(_loc2_.floors.pattern);
         this.var_1246 = this.parseElements(_loc2_.walls.pattern);
         this.var_1247 = this.parseElements(_loc2_.landscapes.pattern);
         for each(_loc3_ in page.offers)
         {
            _loc5_ = _loc3_.productContainer.firstProduct;
            _loc6_ = _loc3_.localizationId;
            _loc7_ = _loc6_ != null ? _loc6_.split(" ") : null;
            if(_loc7_ == null || _loc7_.length != 2)
            {
               continue;
            }
            _loc8_ = _loc7_[1];
            _loc9_ = _loc5_.furnitureData.name;
            switch(_loc9_)
            {
               case "floor":
                  for(_loc10_ in this.var_987)
                  {
                     _loc11_ = this.var_987[_loc10_];
                     if(this.var_653.indexOf(_loc10_) == -1)
                     {
                        this.var_653.push(_loc10_);
                        this.var_1249.push(_loc3_);
                     }
                  }
                  break;
               case "wallpaper":
                  if(this.var_1246[_loc8_] != null)
                  {
                     this.var_808.push(_loc8_);
                     this.var_1248.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               case "landscape":
                  if(this.var_1247[_loc8_] != null)
                  {
                     this.var_809.push(_loc8_);
                     this._landscapeOffers.push(_loc3_);
                  }
                  else
                  {
                     Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc6_,_loc9_]);
                  }
                  break;
               default:
                  Logger.log("[SpacesCatalogWidget] : " + _loc9_);
                  break;
            }
         }
         _loc4_ = 0;
         while(_loc4_ < _window.numChildren)
         {
            _loc12_ = _window.getChildAt(_loc4_);
            if(_loc12_ is IButtonWindow)
            {
               _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
            }
            _loc4_++;
         }
         this.changePattern(const_110,0);
         this.changePattern(const_233,0);
         this.changePattern(TYPE_LANDSCAPE,0);
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1519,this.var_1520,64));
         return true;
      }
      
      private function parseElements(param1:XMLList) : Dictionary
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = new Dictionary();
         if(param1 != null)
         {
            for each(_loc3_ in param1)
            {
               _loc4_ = String(_loc3_.@id);
               if(_loc4_ != null)
               {
                  _loc5_ = new Array();
                  _loc2_[_loc4_] = _loc5_;
                  _loc6_ = _loc3_.children();
                  if(_loc6_ != null && _loc6_.length() > 0)
                  {
                     for each(_loc7_ in _loc6_)
                     {
                        _loc8_ = _loc7_.@id;
                        if(_loc8_ != null && _loc5_.indexOf(_loc8_) == -1)
                        {
                           _loc5_.push(_loc8_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               this.changePattern(const_233,-1);
               break;
            case "ctlg_wall_pattern_next":
               this.changePattern(const_233,1);
               break;
            case "ctlg_wall_color_prev":
               this.changeColor(const_233,-1);
               break;
            case "ctlg_wall_color_next":
               this.changeColor(const_233,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = this.var_1248[this.var_446];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1519);
               }
               break;
            case "ctlg_floor_pattern_prev":
               this.changePattern(const_110,-1);
               break;
            case "ctlg_floor_pattern_next":
               this.changePattern(const_110,1);
               break;
            case "ctlg_floor_color_prev":
               this.changeColor(const_110,-1);
               break;
            case "ctlg_floor_color_next":
               this.changeColor(const_110,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = this.var_1249[this.var_444];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this._floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               this.changePattern(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               this.changePattern(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_landscape_color_prev":
               this.changeColor(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_color_next":
               this.changeColor(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = this._landscapeOffers[this.var_445];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1520);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1519,this.var_1520,64));
      }
      
      private function updateConfiguration() : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc1_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var _loc2_:String = this.var_653[this.var_444];
         var _loc3_:Array = this.var_987[_loc2_];
         if(_loc3_ != null && this.var_442 >= 0)
         {
            _loc11_ = _loc3_[this.var_442];
            if(_loc11_ != null)
            {
               this._floorType = _loc11_;
            }
         }
         var _loc4_:Offer = this.var_1249[this.var_444];
         if(_loc4_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc4_.priceInCredits));
            }
         }
         var _loc5_:String = this.var_808[this.var_446];
         var _loc6_:Array = this.var_1246[_loc5_];
         if(_loc6_ != null && this.var_443 >= 0)
         {
            _loc13_ = _loc6_[this.var_443];
            if(_loc13_ != null)
            {
               this.var_1519 = _loc13_;
            }
         }
         var _loc7_:Offer = this.var_1248[this.var_446];
         if(_loc7_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc7_.priceInCredits));
            }
         }
         var _loc8_:String = this.var_809[this.var_445];
         var _loc9_:Array = this.var_1247[_loc8_];
         if(_loc9_ != null && this.var_447 >= 0)
         {
            _loc15_ = _loc9_[this.var_447];
            if(_loc15_ != null)
            {
               this.var_1520 = _loc15_;
            }
         }
         var _loc10_:Offer = this._landscapeOffers[this.var_445];
         if(_loc10_ != null)
         {
            _loc16_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc16_ != null)
            {
               _loc16_.caption = _loc1_.registerParameter("catalog.purchase.price.credits","credits",String(_loc10_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_110:
               this.var_444 += param2;
               if(this.var_444 < 0)
               {
                  this.var_444 = this.var_653.length - 1;
               }
               if(this.var_444 >= this.var_653.length)
               {
                  this.var_444 = 0;
               }
               this.var_442 = 0;
               this.var_989 = 0;
               _loc5_ = this.var_653[this.var_444];
               _loc6_ = this.var_987[_loc5_];
               if(_loc6_ != null)
               {
                  this.var_989 = _loc6_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(this.var_989 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_233:
               this.var_446 += param2;
               if(this.var_446 < 0)
               {
                  this.var_446 = this.var_808.length - 1;
               }
               if(this.var_446 == this.var_808.length)
               {
                  this.var_446 = 0;
               }
               this.var_443 = 0;
               this.var_988 = 0;
               _loc7_ = this.var_808[this.var_446];
               _loc8_ = this.var_1246[_loc7_];
               if(_loc8_ != null)
               {
                  this.var_988 = _loc8_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(this.var_988 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_445 += param2;
               if(this.var_445 < 0)
               {
                  this.var_445 = this.var_809.length - 1;
               }
               if(this.var_445 >= this.var_809.length)
               {
                  this.var_445 = 0;
               }
               this.var_447 = 0;
               this.var_990 = 0;
               _loc9_ = this.var_809[this.var_445];
               _loc10_ = this.var_1247[_loc9_];
               if(_loc10_ != null)
               {
                  this.var_990 = _loc10_.length;
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(this.var_990 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_110:
               this.var_442 += param2;
               if(this.var_442 < 0)
               {
                  if(this.var_989 > 0)
                  {
                     this.var_442 = this.var_989 - 1;
                  }
                  else
                  {
                     this.var_442 = 0;
                  }
               }
               if(this.var_442 >= this.var_989)
               {
                  this.var_442 = 0;
               }
               break;
            case const_233:
               this.var_443 += param2;
               if(this.var_443 < 0)
               {
                  if(this.var_988 > 0)
                  {
                     this.var_443 = this.var_988 - 1;
                  }
                  else
                  {
                     this.var_443 = 0;
                  }
               }
               if(this.var_443 >= this.var_988)
               {
                  this.var_443 = 0;
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_447 += param2;
               if(this.var_447 < 0)
               {
                  if(this.var_990 > 0)
                  {
                     this.var_447 = this.var_990 - 1;
                  }
                  else
                  {
                     this.var_447 = 0;
                  }
               }
               if(this.var_447 >= this.var_990)
               {
                  this.var_447 = 0;
               }
         }
      }
   }
}
