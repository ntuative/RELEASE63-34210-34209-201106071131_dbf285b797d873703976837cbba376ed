package com.sulake.habbo.friendbar.view
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.events.FindFriendsNotificationEvent;
   import com.sulake.habbo.friendbar.events.FriendBarUpdateEvent;
   import com.sulake.habbo.friendbar.events.FriendRequestEvent;
   import com.sulake.habbo.friendbar.events.NewMessageEvent;
   import com.sulake.habbo.friendbar.events.NotificationEvent;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.tabs.AddFriendsTab;
   import com.sulake.habbo.friendbar.view.tabs.FriendEntityTab;
   import com.sulake.habbo.friendbar.view.tabs.ITab;
   import com.sulake.habbo.friendbar.view.tabs.Tab;
   import com.sulake.habbo.friendbar.view.tabs.tokens.Token;
   import com.sulake.habbo.friendbar.view.utils.FriendListIcon;
   import com.sulake.habbo.friendbar.view.utils.Icon;
   import com.sulake.habbo.friendbar.view.utils.MessengerIcon;
   import com.sulake.habbo.friendbar.view.utils.TextCropper;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboAlertDialogFlag;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import iid.IIDHabboWindowManager;
   
   public class HabboFriendBarView extends Component implements IHabboFriendBarView, IAvatarImageListener
   {
      
      private static const const_1508:int = 127;
      
      private static const const_461:int = 1;
      
      private static const const_1509:int = 2;
      
      private static const const_674:int = 3;
      
      private static const const_1045:int = 3;
      
      private static const const_1507:Boolean = false;
      
      private static const const_675:int = 3;
      
      private static const const_1500:String = "arrow";
      
      private static const const_1496:String = "left";
      
      private static const const_1505:String = "right";
      
      private static const const_1498:String = "bar_xml";
      
      private static const const_1495:String = "toggle_xml";
      
      private static const const_87:String = "container";
      
      private static const const_1502:String = "wrapper";
      
      private static const const_1497:String = "border";
      
      private static const const_673:String = "list";
      
      private static const const_683:String = "header";
      
      private static const const_684:String = "canvas";
      
      private static const const_1046:String = "icon";
      
      private static const PIECES:String = "pieces";
      
      private static const const_1511:String = "button_left";
      
      private static const const_1503:String = "button_right";
      
      private static const const_1506:String = "button_left_page";
      
      private static const const_1504:String = "button_right_page";
      
      private static const const_1510:String = "button_left_end";
      
      private static const const_1499:String = "button_right_end";
      
      private static const const_1386:String = "button_close";
      
      private static const const_1494:String = "button_open";
      
      private static const const_1501:String = "messenger";
      
      private static const const_1047:String = "friendlist";
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_798:IAvatarRenderManager;
      
      private var var_65:IHabboFriendBarData;
      
      private var var_976:IHabboLocalizationManager;
      
      private var var_52:IWindowContainer;
      
      private var var_214:IWindowContainer;
      
      private var var_103:Vector.<ITab>;
      
      private var var_1495:ITab;
      
      private var var_975:int = -1;
      
      private var _startIndex:int = 0;
      
      private var var_1497:TextCropper;
      
      private var var_529:FriendListIcon;
      
      private var var_369:MessengerIcon;
      
      private var var_1496:Boolean = true;
      
      public function HabboFriendBarView(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         super(param1,param2,param3);
         this.var_1497 = new TextCropper();
         this.var_103 = new Vector.<ITab>();
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRendererAvailable);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerAvailable);
         queueInterface(new IIDHabboFriendBarData(),this.onFriendBarDataAvailable);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationAvailable);
      }
      
      public function setMessengerIconNotify(param1:Boolean) : void
      {
         if(this.var_369)
         {
            this.var_369.notify(param1);
         }
      }
      
      public function setFriendListIconNotify(param1:Boolean) : void
      {
         if(this.var_529)
         {
            this.var_529.notify(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_369)
            {
               this.var_369.dispose();
               this.var_369 = null;
            }
            if(this.var_529)
            {
               this.var_529.dispose();
               this.var_529 = null;
            }
            if(this.var_214)
            {
               this.var_214.dispose();
               this.var_214 = null;
            }
            if(this.var_52)
            {
               this.var_52.dispose();
               this.var_52 = null;
            }
            while(this.var_103.length > 0)
            {
               ITab(this.var_103.pop()).dispose();
            }
            if(this.var_65)
            {
               if(!this.var_65.disposed)
               {
                  if(this.var_65.events)
                  {
                     this.var_65.events.removeEventListener(FriendBarUpdateEvent.const_884,this.onRefreshView);
                     this.var_65.events.removeEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
                     this.var_65.events.removeEventListener(FriendRequestEvent.const_783,this.onFriendRequestUpdate);
                     this.var_65.events.removeEventListener(NewMessageEvent.const_986,this.onNewInstantMessage);
                     this.var_65.events.removeEventListener(NotificationEvent.const_914,this.onFriendNotification);
                  }
                  this.var_65.release(new IIDHabboFriendBarData());
                  this.var_65 = null;
               }
            }
            if(this._windowManager)
            {
               if(!this._windowManager.disposed)
               {
                  this._windowManager.getWindowContext(const_461).getDesktopWindow().removeEventListener(WindowEvent.const_41,this.onDesktopResized);
                  this._windowManager.release(new IIDHabboWindowManager());
                  this._windowManager = null;
               }
            }
            if(this.var_798)
            {
               if(!this.var_798.disposed)
               {
                  this.var_798.release(new IIDAvatarRenderManager());
                  this.var_798 = null;
               }
            }
            if(this.var_976)
            {
               if(!this.var_976.disposed)
               {
                  this.var_976.release(new IIDHabboLocalizationManager());
                  this.var_976 = null;
               }
            }
            this.var_1497.dispose();
            this.var_1497 = null;
            super.dispose();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(this.var_52)
         {
            this.var_52.visible = param1;
            this.var_52.activate();
         }
         if(this.var_214)
         {
            this.var_214.visible = !param1;
            if(this.var_52)
            {
               this.var_214.x = this.var_52.x;
               this.var_214.y = this.var_52.y;
               this.var_214.activate();
            }
         }
      }
      
      public function get visible() : Boolean
      {
         return this.var_52 && this.var_52.visible;
      }
      
      public function populate() : void
      {
         var _loc5_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc1_:int = this.var_975;
         this.deSelect(false);
         var _loc2_:IWindowContainer = this.var_52.findChildByName(const_87) as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_673) as IItemListWindow;
         _loc3_.autoArrangeItems = false;
         var _loc4_:int = _loc3_.numListItems;
         _loc5_ = _loc4_;
         while(_loc5_ > 0)
         {
            _loc3_.removeListItemAt(_loc5_ - 1);
            _loc5_--;
         }
         while(this.var_103.length > 0)
         {
            this.var_103.pop().recycle();
         }
         var _loc6_:int = this.var_65.numFriends + (!!this.var_1496 ? 1 : 0);
         var _loc7_:int = Math.min(this.maxNumOfTabsVisible,_loc6_);
         if(this._startIndex + _loc7_ > _loc6_)
         {
            this._startIndex = Math.max(0,this._startIndex - (this._startIndex + _loc7_ - _loc6_));
         }
         _loc4_ = Math.min(this.var_65.numFriends,this._startIndex + _loc7_);
         _loc5_ = this._startIndex;
         while(_loc5_ < _loc4_)
         {
            _loc8_ = this.var_65.getFriendAt(_loc5_);
            _loc9_ = FriendEntityTab.allocate(_loc8_);
            this.var_103.push(_loc9_);
            _loc3_.addListItem(_loc9_.window);
            _loc5_++;
         }
         if(this.var_1496)
         {
            _loc10_ = this.maxNumOfTabsVisible;
            if(this.var_103.length < _loc10_)
            {
               _loc11_ = 1;
               if(this.var_103.length + _loc11_ < const_675)
               {
                  _loc11_ = Math.min(_loc10_ - this.var_103.length,const_675 - this.var_103.length);
               }
               _loc6_ = this.var_65.numFriends + _loc11_;
               while(_loc11_-- > 0)
               {
                  _loc12_ = AddFriendsTab.allocate();
                  _loc3_.addListItem(_loc12_.window);
                  this.var_103.push(_loc12_);
               }
            }
         }
         _loc3_.autoArrangeItems = true;
         if(_loc1_ > -1)
         {
            this.selectFriendEntity(_loc1_);
         }
         _loc2_.visible = this.var_103.length > 0;
         this.toggleArrowButtons(this.var_103.length < _loc6_,this._startIndex != 0,this._startIndex + this.var_103.length < _loc6_);
      }
      
      private function getFriendEntityTabByID(param1:int) : FriendEntityTab
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_103.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.var_103[_loc4_] as FriendEntityTab;
            if(_loc2_)
            {
               if(_loc2_.friend.id == param1)
               {
                  return _loc2_;
               }
            }
            _loc4_++;
         }
         return null;
      }
      
      private function onFriendBarDataAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_65 = param2 as IHabboFriendBarData;
         this.var_65.events.addEventListener(FriendBarUpdateEvent.const_884,this.onRefreshView);
         this.var_65.events.addEventListener(FindFriendsNotificationEvent.TYPE,this.onFindFriendsNotification);
         this.var_65.events.addEventListener(FriendRequestEvent.const_783,this.onFriendRequestUpdate);
         this.var_65.events.addEventListener(NewMessageEvent.const_986,this.onNewInstantMessage);
         this.var_65.events.addEventListener(NotificationEvent.const_914,this.onFriendNotification);
      }
      
      private function onWindowManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationAvailable(param1:IID, param2:IHabboLocalizationManager) : void
      {
         this.var_976 = param2 as IHabboLocalizationManager;
      }
      
      private function isUserInterfaceReady() : Boolean
      {
         return this.var_52 && !this.var_52.disposed;
      }
      
      private function buildUserInterface() : void
      {
         var _loc2_:* = null;
         Tab.var_1111 = this.var_65;
         Tab.var_1375 = this;
         Tab.ASSETS = assets;
         Tab.WINDOWING = this._windowManager;
         Tab.var_2969 = this.var_976;
         Tab.var_2175 = this.var_1497;
         Token.WINDOWING = this._windowManager;
         Token.ASSETS = assets;
         var _loc1_:IAsset = assets.getAssetByName(const_1498);
         this.var_52 = this._windowManager.buildFromXML(_loc1_.content as XML,const_461) as IWindowContainer;
         this.var_52.x = const_674;
         this.var_52.y = this.var_52.parent.height - (this.var_52.height + const_1509);
         this.var_52.width = this.var_52.parent.width - (const_674 + const_1045);
         this.var_52.setParamFlag(WindowParam.const_247,true);
         this.var_52.procedure = this.barWindowEventProc;
         if(const_1507)
         {
            _loc1_ = assets.getAssetByName(const_1495);
            this.var_214 = this._windowManager.buildFromXML(_loc1_.content as XML,const_461) as IWindowContainer;
            this.var_214.x = this.var_52.x;
            this.var_214.y = this.var_52.y;
            this.var_214.setParamFlag(WindowParam.const_247,true);
            this.var_214.visible = false;
            this.var_214.procedure = this.toggleWindowEventProc;
         }
         _loc2_ = IWindowContainer(this.var_52.findChildByName(const_1047));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_529 = new FriendListIcon(assets,_loc2_.getChildByName(const_1046) as IBitmapWrapperWindow);
         _loc2_ = IWindowContainer(this.var_52.findChildByName(const_1501));
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onIconMouseEvent);
         _loc2_.addEventListener(WindowMouseEvent.const_25,this.onIconMouseEvent);
         this.var_369 = new MessengerIcon(assets,_loc2_.getChildByName(const_1046) as IBitmapWrapperWindow);
         this.var_369.enable(false);
         this.visible = true;
         this._windowManager.getWindowContext(const_461).getDesktopWindow().addEventListener(WindowEvent.const_41,this.onDesktopResized);
      }
      
      private function onAvatarRendererAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_798 = param2 as IAvatarRenderManager;
      }
      
      public function getAvatarFaceBitmap(param1:String) : BitmapData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!_loc2_)
         {
            if(this.var_798)
            {
               _loc3_ = this.var_798.createAvatarImage(param1,AvatarScaleType.const_60,null,this);
               if(_loc3_)
               {
                  _loc2_ = _loc3_.getCroppedImage(AvatarSetType.const_53);
                  _loc3_.dispose();
               }
            }
         }
         return _loc2_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc3_:IItemListWindow = this.var_52.findChildByName(const_673) as IItemListWindow;
         var _loc4_:int = this.var_65.numFriends;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = this.var_65.getFriendAt(_loc5_);
            if(_loc2_.figure == param1)
            {
               _loc6_ = this.getAvatarFaceBitmap(_loc2_.figure);
               if(_loc6_)
               {
                  _loc7_ = _loc3_.getListItemByID(_loc2_.id) as IWindowContainer;
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.getChildByName(PIECES) as IItemListWindow;
                     if(_loc8_)
                     {
                        _loc9_ = IWindowContainer(_loc8_.getListItemByName(const_683));
                        if(_loc9_)
                        {
                           _loc10_ = _loc9_.findChildByName(const_684) as IBitmapWrapperWindow;
                           _loc10_.bitmap = _loc6_;
                           _loc10_.width = _loc6_.width;
                           _loc10_.height = _loc6_.height;
                        }
                     }
                  }
               }
            }
            _loc5_++;
         }
      }
      
      public function faceBookImageReady(param1:BitmapData) : void
      {
      }
      
      private function isFriendSelected(param1:IFriendEntity) : Boolean
      {
         return this.var_975 == param1.id;
      }
      
      public function selectTab(param1:ITab, param2:Boolean) : void
      {
         if(!param1.selected)
         {
            if(this.var_1495)
            {
               this.deSelect(true);
            }
            param1.select(param2);
            this.var_1495 = param1;
            if(param1 is FriendEntityTab)
            {
               this.var_975 = FriendEntityTab(param1).friend.id;
            }
         }
      }
      
      public function selectFriendEntity(param1:int) : void
      {
         if(this.var_975 == param1)
         {
            return;
         }
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1);
         if(_loc2_)
         {
            this.selectTab(_loc2_,false);
            this.var_975 = param1;
         }
      }
      
      public function deSelect(param1:Boolean) : void
      {
         if(this.var_1495)
         {
            this.var_1495.deselect(param1);
            this.var_975 = -1;
         }
      }
      
      private function onRefreshView(param1:Event) : void
      {
         if(!this.isUserInterfaceReady())
         {
            this.buildUserInterface();
         }
         this.resizeAndPopulate(true);
      }
      
      private function onFindFriendsNotification(param1:FindFriendsNotificationEvent) : void
      {
         var event:FindFriendsNotificationEvent = param1;
         var title:String = !!event.success ? "${friendbar.find.success.title}" : "${friendbar.find.error.title}";
         var text:String = !!event.success ? "${friendbar.find.success.text}" : "${friendbar.find.error.text}";
         this._windowManager.notify(title,text,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         },HabboAlertDialogFlag.const_538);
      }
      
      private function onFriendRequestUpdate(param1:FriendRequestEvent) : void
      {
         if(this.var_529)
         {
            this.var_529.notify(this.var_65.numFriendRequests > 0);
         }
      }
      
      private function onNewInstantMessage(param1:NewMessageEvent) : void
      {
         if(this.var_369)
         {
            if(param1.notify)
            {
               this.var_369.notify(true);
            }
            else
            {
               this.var_369.enable(true);
            }
         }
      }
      
      private function onFriendNotification(param1:NotificationEvent) : void
      {
         var _loc2_:FriendEntityTab = this.getFriendEntityTabByID(param1.var_2968);
         if(!_loc2_)
         {
            return;
         }
         _loc2_.addNotificationToken(param1.notification,true);
      }
      
      private function barWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.type == WindowMouseEvent.const_45)
         {
            _loc3_ = this._startIndex;
            _loc4_ = this.var_65.numFriends + (!!this.var_1496 ? 1 : 0);
            switch(param2.name)
            {
               case const_1511:
                  _loc3_ = Math.max(0,this._startIndex - 1);
                  break;
               case const_1506:
                  _loc3_ = Math.max(0,this._startIndex - this.maxNumOfTabsVisible);
                  break;
               case const_1510:
                  _loc3_ = 0;
                  break;
               case const_1503:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + 1));
                  break;
               case const_1504:
                  _loc3_ = Math.max(0,Math.min(_loc4_ - this.maxNumOfTabsVisible,this._startIndex + this.maxNumOfTabsVisible));
                  break;
               case const_1499:
                  _loc3_ = Math.max(0,_loc4_ - this.maxNumOfTabsVisible);
                  break;
               case const_1386:
                  this.visible = false;
                  break;
               case const_1497:
                  this.deSelect(true);
            }
            if(_loc3_ != this._startIndex)
            {
               this.deSelect(true);
               this._startIndex = _loc3_;
               this.resizeAndPopulate(true);
            }
         }
         if(param1.type == WindowEvent.const_549)
         {
            this.deSelect(true);
         }
      }
      
      private function onIconMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:Icon = param1.window.name == const_1047 ? this.var_529 : this.var_369;
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(_loc2_ is FriendListIcon)
               {
                  this.var_65.toggleFriendList();
                  _loc2_.notify(false);
               }
               else if(_loc2_ is MessengerIcon)
               {
                  this.var_65.toggleMessenger();
                  _loc2_.notify(false);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               _loc2_.hover(true);
               break;
            case WindowMouseEvent.const_25:
               _loc2_.hover(false);
         }
      }
      
      private function toggleWindowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(this.var_214.visible)
         {
            if(param1.type == WindowMouseEvent.const_45)
            {
               switch(param2.name)
               {
                  case const_1494:
                     this.visible = true;
               }
            }
         }
      }
      
      private function toggleArrowButtons(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:IWindowContainer = this.var_52.findChildByName(const_1502) as IWindowContainer;
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1500,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            _loc4_.visible = param1;
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1496,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param2)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
         _loc5_ = [];
         _loc6_.groupChildrenWithTag(const_1505,_loc5_);
         for each(_loc4_ in _loc5_)
         {
            if(param3)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
      }
      
      private function resizeAndPopulate(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         if(!disposed)
         {
            if(this.var_52)
            {
               this.var_52.width = this.var_52.parent.width - (const_674 + const_1045);
               if(!param1)
               {
                  _loc2_ = this.maxNumOfTabsVisible;
                  if(_loc2_ < this.var_103.length)
                  {
                     param1 = true;
                  }
                  else if(_loc2_ > this.var_103.length)
                  {
                     if(this.var_103.length < const_675)
                     {
                        param1 = true;
                     }
                     else if(this.var_103.length < this.var_65.numFriends + (!!this.var_1496 ? 1 : 0))
                     {
                        param1 = true;
                     }
                     else if(this.numFriendEntityTabsVisible < this.var_65.numFriends)
                     {
                        param1 = true;
                     }
                  }
               }
               if(param1)
               {
                  this.populate();
               }
            }
         }
      }
      
      private function get numFriendEntityTabsVisible() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.var_103.length;
         while(_loc2_-- > 0)
         {
            if(this.var_103[_loc2_] is FriendEntityTab)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function get maxNumOfTabsVisible() : int
      {
         var _loc1_:IWindowContainer = this.var_52.findChildByName(const_87) as IWindowContainer;
         var _loc2_:IWindowContainer = _loc1_.getChildByName("wrapper") as IWindowContainer;
         var _loc3_:IItemListWindow = _loc2_.findChildByName(const_673) as IItemListWindow;
         var _loc4_:int = _loc2_.width - _loc3_.width;
         return (_loc1_.width - _loc4_) / (const_1508 + _loc3_.spacing);
      }
      
      private function onDesktopResized(param1:WindowEvent) : void
      {
         this.resizeAndPopulate(false);
      }
   }
}
