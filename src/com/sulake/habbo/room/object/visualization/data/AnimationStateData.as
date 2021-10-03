package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1711:int = -1;
      
      private var var_2286:int = 0;
      
      private var var_1465:Boolean = false;
      
      private var var_640:int = 0;
      
      private var _frames:Array;
      
      private var var_921:Array;
      
      private var var_920:Array;
      
      private var var_607:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_921 = [];
         this.var_920 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1465;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1465 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_640;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_640 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1711;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1711)
         {
            this.var_1711 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2286;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function dispose() : void
      {
         this.recycleFrames();
         this._frames = null;
         this.var_921 = null;
         this.var_920 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_607 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this.recycleFrames();
            this._frames = [];
         }
         this.var_921 = [];
         this.var_920 = [];
         this.var_1465 = false;
         this.var_640 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_607)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  _loc3_.recycle();
                  this._frames[_loc2_] = AnimationFrame.allocate(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_921[_loc2_] = false;
            this.var_920[_loc2_] = false;
            _loc2_++;
         }
      }
      
      private function recycleFrames() : void
      {
         var _loc1_:* = null;
         if(this._frames != null)
         {
            for each(_loc1_ in this._frames)
            {
               if(_loc1_ != null)
               {
                  _loc1_.recycle();
               }
            }
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_607)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < this.var_607)
         {
            _loc3_ = this._frames[param1];
            if(_loc3_ != null)
            {
               _loc3_.recycle();
            }
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_607)
         {
            return this.var_920[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_607)
         {
            this.var_920[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_607)
         {
            return this.var_921[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_607)
         {
            this.var_921[param1] = param2;
         }
      }
   }
}
