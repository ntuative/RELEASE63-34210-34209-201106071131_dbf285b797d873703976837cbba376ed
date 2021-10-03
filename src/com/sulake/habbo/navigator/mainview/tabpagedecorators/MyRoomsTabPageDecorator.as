package com.sulake.habbo.navigator.mainview.tabpagedecorators
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateRoomMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class MyRoomsTabPageDecorator implements ITabPageDecorator
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_145:IDropMenuWindow;
      
      public function MyRoomsTabPageDecorator(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
      }
      
      public function refreshCustomContent(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("me_header") as IWindowContainer;
         if(this.var_145 == null)
         {
            this.var_145 = IDropMenuWindow(_loc3_.findChildByName("meSubNavi"));
            this.prepareSubNavi();
            this.var_145.addEventListener(WindowEvent.const_49,this.onFilterSelected);
         }
         _loc3_.visible = true;
      }
      
      public function tabSelected() : void
      {
         if(this.var_145 != null)
         {
            this.var_145.removeEventListener(WindowEvent.const_49,this.onFilterSelected);
            this.var_145.selection = 0;
            this.var_145.addEventListener(WindowEvent.const_49,this.onFilterSelected);
         }
      }
      
      public function refreshFooter(param1:IWindowContainer) : void
      {
         var _loc2_:IWindowContainer = param1.getChildByName("me_footer") as IWindowContainer;
         var _loc3_:IWindow = _loc2_.findChildByName("create_room_but");
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCreateRoomClick);
         }
         this._navigator.refreshButton(_loc2_,"create_room",true,null,0);
         _loc2_.visible = true;
      }
      
      public function navigatorOpenedWhileInTab() : void
      {
         this.startSearch();
      }
      
      private function onCreateRoomClick(param1:WindowEvent) : void
      {
         this._navigator.send(new CanCreateRoomMessageComposer());
      }
      
      private function prepareSubNavi() : void
      {
         if(this.var_145 == null)
         {
            return;
         }
         var _loc1_:Array = new Array();
         _loc1_.push(this._navigator.getText("navigator.navisel.myrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.wherearemyfriends"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfriendsrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfavourites"));
         _loc1_.push(this._navigator.getText("navigator.navisel.visitedrooms"));
         this.var_145.populate(_loc1_);
         this.var_145.selection = 0;
      }
      
      private function onFilterSelected(param1:WindowEvent) : void
      {
         this.startSearch();
         var _loc2_:IWindow = param1.target;
         if(_loc2_ is IDropMenuWindow)
         {
            this._navigator.trackNavigationDataPoint(IDropMenuWindow(_loc2_).enumerateSelection()[IDropMenuWindow(_loc2_).selection],"me.category.view");
         }
      }
      
      private function startSearch() : void
      {
         var _loc1_:int = this.var_145 == null ? 0 : int(this.var_145.selection);
         Logger.log("Me subNavi selection changed: " + _loc1_);
         this._navigator.mainViewCtrl.startSearch(Tabs.const_252,this.getSearchTypeForIndex(_loc1_));
      }
      
      private function getSearchTypeForIndex(param1:int) : int
      {
         if(param1 == 1)
         {
            return Tabs.const_809;
         }
         if(param1 == 2)
         {
            return Tabs.const_960;
         }
         if(param1 == 3)
         {
            return Tabs.const_981;
         }
         if(param1 == 4)
         {
            return Tabs.const_752;
         }
         return Tabs.const_270;
      }
      
      public function get filterCategory() : String
      {
         return !!this.var_145 ? this.var_145.enumerateSelection()[this.var_145.selection] : null;
      }
   }
}
