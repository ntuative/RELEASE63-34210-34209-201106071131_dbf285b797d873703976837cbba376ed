package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_371:int = 1;
      
      public static const const_208:int = 2;
      
      public static const const_252:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_209:int = 5;
      
      public static const const_396:int = 1;
      
      public static const const_1007:int = 2;
      
      public static const const_960:int = 3;
      
      public static const const_809:int = 4;
      
      public static const const_270:int = 5;
      
      public static const const_981:int = 6;
      
      public static const const_752:int = 7;
      
      public static const const_256:int = 8;
      
      public static const const_422:int = 9;
      
      public static const const_2180:int = 10;
      
      public static const const_717:int = 11;
      
      public static const const_640:int = 12;
       
      
      private var var_437:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_437 = new Array();
         this.var_437.push(new Tab(this._navigator,const_371,const_640,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_620));
         this.var_437.push(new Tab(this._navigator,const_208,const_396,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_620));
         this.var_437.push(new Tab(this._navigator,const_346,const_717,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1258));
         this.var_437.push(new Tab(this._navigator,const_252,const_270,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_620));
         this.var_437.push(new Tab(this._navigator,const_209,const_256,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_873));
         this.setSelectedTab(const_371);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_437;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_437)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_437)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
