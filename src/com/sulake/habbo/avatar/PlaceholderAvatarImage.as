package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_800:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1115)
         {
            _structure = null;
            _assets = null;
            var_283 = null;
            var_298 = null;
            var_655 = null;
            var_585 = null;
            var_344 = null;
            if(!var_1395 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_823 = null;
            var_1115 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_800[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_800[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_440:
               switch(_loc3_)
               {
                  case AvatarAction.const_940:
                  case AvatarAction.const_516:
                  case AvatarAction.const_382:
                  case AvatarAction.const_711:
                  case AvatarAction.const_399:
                  case AvatarAction.const_740:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_357:
            case AvatarAction.const_758:
            case AvatarAction.const_266:
            case AvatarAction.const_764:
            case AvatarAction.const_989:
            case AvatarAction.const_816:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
