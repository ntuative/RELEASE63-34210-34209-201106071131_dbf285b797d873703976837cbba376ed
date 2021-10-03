package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1653:Number = 12;
       
      
      private var var_2906:int = -1;
      
      private var var_2904:int = -2;
      
      private var var_223:Vector3d = null;
      
      private var var_1362:Number = 0;
      
      private var var_1637:Number = 0;
      
      private var var_2109:Boolean = false;
      
      private var var_202:Vector3d = null;
      
      private var var_2110:Vector3d;
      
      private var var_2907:Boolean = false;
      
      private var var_2905:Boolean = false;
      
      private var var_2908:Boolean = false;
      
      private var var_2910:Boolean = false;
      
      private var var_2909:int = 0;
      
      private var var_2902:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2903:int = 0;
      
      private var var_2901:int = 0;
      
      private var var_1849:int = -1;
      
      private var var_2108:int = 0;
      
      private var var_2111:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2110 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_202;
      }
      
      public function get targetId() : int
      {
         return this.var_2906;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2904;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2110;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2907;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2905;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2908;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2910;
      }
      
      public function get screenWd() : int
      {
         return this.var_2909;
      }
      
      public function get screenHt() : int
      {
         return this.var_2902;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2903;
      }
      
      public function get roomHt() : int
      {
         return this.var_2901;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1849;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_223 != null && this.var_202 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2906 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2110.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2904 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2907 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2905 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2908 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2910 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2909 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2902 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2111 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2903 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2901 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1849 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_223 == null)
         {
            this.var_223 = new Vector3d();
         }
         if(this.var_223.x != param1.x || this.var_223.y != param1.y || this.var_223.z != param1.z)
         {
            this.var_223.assign(param1);
            this.var_2108 = 0;
            _loc2_ = Vector3d.dif(this.var_223,this.var_202);
            this.var_1362 = _loc2_.length;
            this.var_2109 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_223 = null;
         this.var_202 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_202 != null)
         {
            return;
         }
         this.var_202 = new Vector3d();
         this.var_202.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_202 == null)
         {
            this.var_202 = new Vector3d();
         }
         this.var_202.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_223 != null && this.var_202 != null)
         {
            ++this.var_2108;
            if(this.var_2111)
            {
               this.var_2111 = false;
               this.var_202 = this.var_223;
               this.var_223 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_223,this.var_202);
            if(_loc3_.length > this.var_1362)
            {
               this.var_1362 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_202 = this.var_223;
               this.var_223 = null;
               this.var_1637 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1362);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1362 / const_1653;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2109)
               {
                  if(_loc7_ < this.var_1637)
                  {
                     _loc7_ = this.var_1637;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2109 = false;
                  }
               }
               this.var_1637 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_202 = Vector3d.sum(this.var_202,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1849 = -1;
      }
   }
}
