package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_560:WallRasterizer;
      
      private var var_558:FloorRasterizer;
      
      private var var_856:WallAdRasterizer;
      
      private var var_559:LandscapeRasterizer;
      
      private var var_855:PlaneMaskManager;
      
      private var var_801:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_560 = new WallRasterizer();
         this.var_558 = new FloorRasterizer();
         this.var_856 = new WallAdRasterizer();
         this.var_559 = new LandscapeRasterizer();
         this.var_855 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_801;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_558;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_560;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_856;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_559;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_855;
      }
      
      public function dispose() : void
      {
         if(this.var_560 != null)
         {
            this.var_560.dispose();
            this.var_560 = null;
         }
         if(this.var_558 != null)
         {
            this.var_558.dispose();
            this.var_558 = null;
         }
         if(this.var_856 != null)
         {
            this.var_856.dispose();
            this.var_856 = null;
         }
         if(this.var_559 != null)
         {
            this.var_559.dispose();
            this.var_559 = null;
         }
         if(this.var_855 != null)
         {
            this.var_855.dispose();
            this.var_855 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_560 != null)
         {
            this.var_560.clearCache();
         }
         if(this.var_558 != null)
         {
            this.var_558.clearCache();
         }
         if(this.var_559 != null)
         {
            this.var_559.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_560.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_558.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_856.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_559.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_855.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_801)
         {
            return;
         }
         this.var_560.initializeAssetCollection(param1);
         this.var_558.initializeAssetCollection(param1);
         this.var_856.initializeAssetCollection(param1);
         this.var_559.initializeAssetCollection(param1);
         this.var_855.initializeAssetCollection(param1);
         this.var_801 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
