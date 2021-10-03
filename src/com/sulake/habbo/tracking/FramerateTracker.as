package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1952:int;
      
      private var var_2802:int;
      
      private var var_864:int;
      
      private var var_546:Number;
      
      private var var_2804:Boolean;
      
      private var var_2803:int;
      
      private var var_2041:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_546);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2802 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2803 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2804 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_864;
         if(this.var_864 == 1)
         {
            this.var_546 = param1;
            this.var_1952 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_864);
            this.var_546 = this.var_546 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2804 && param3 - this.var_1952 >= this.var_2802)
         {
            this.var_864 = 0;
            if(this.var_2041 < this.var_2803)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2041;
               this.var_1952 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
