package com.sulake.core.window
{
   import com.sulake.core.window.components.ActivatorController;
   import com.sulake.core.window.components.BackgroundController;
   import com.sulake.core.window.components.BitmapWrapperController;
   import com.sulake.core.window.components.BorderController;
   import com.sulake.core.window.components.BubbleController;
   import com.sulake.core.window.components.ButtonController;
   import com.sulake.core.window.components.CanvasController;
   import com.sulake.core.window.components.CheckBoxController;
   import com.sulake.core.window.components.CloseButtonController;
   import com.sulake.core.window.components.ContainerButtonController;
   import com.sulake.core.window.components.ContainerController;
   import com.sulake.core.window.components.DisplayObjectWrapperController;
   import com.sulake.core.window.components.DropMenuController;
   import com.sulake.core.window.components.DropMenuItemController;
   import com.sulake.core.window.components.FrameController;
   import com.sulake.core.window.components.HTMLTextController;
   import com.sulake.core.window.components.HeaderController;
   import com.sulake.core.window.components.IconController;
   import com.sulake.core.window.components.ItemGridController;
   import com.sulake.core.window.components.ItemListController;
   import com.sulake.core.window.components.PasswordFieldController;
   import com.sulake.core.window.components.RadioButtonController;
   import com.sulake.core.window.components.RegionController;
   import com.sulake.core.window.components.ScalerController;
   import com.sulake.core.window.components.ScrollableItemListWindow;
   import com.sulake.core.window.components.ScrollbarController;
   import com.sulake.core.window.components.ScrollbarLiftController;
   import com.sulake.core.window.components.SelectableButtonController;
   import com.sulake.core.window.components.SelectorController;
   import com.sulake.core.window.components.TabButtonController;
   import com.sulake.core.window.components.TabContainerButtonController;
   import com.sulake.core.window.components.TabContextController;
   import com.sulake.core.window.components.TabSelectorController;
   import com.sulake.core.window.components.TextController;
   import com.sulake.core.window.components.TextFieldController;
   import com.sulake.core.window.components.TextLabelController;
   import com.sulake.core.window.components.ToolTipController;
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class Classes
   {
      
      protected static var var_15:Dictionary;
       
      
      public function Classes()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!var_15)
         {
            var_15 = new Dictionary();
            var_15["null"] = WindowController;
            var_15["null"] = ActivatorController;
            var_15["null"] = BackgroundController;
            var_15["null"] = BorderController;
            var_15["null"] = BubbleController;
            var_15["null"] = WindowController;
            var_15["null"] = WindowController;
            var_15["null"] = WindowController;
            var_15["null"] = WindowController;
            var_15["null"] = ButtonController;
            var_15["null"] = ButtonController;
            var_15["null"] = SelectableButtonController;
            var_15["null"] = SelectableButtonController;
            var_15["null"] = SelectableButtonController;
            var_15["null"] = BitmapWrapperController;
            var_15["null"] = CanvasController;
            var_15["null"] = CheckBoxController;
            var_15["null"] = ContainerController;
            var_15["null"] = ContainerButtonController;
            var_15["null"] = CloseButtonController;
            var_15["null"] = DisplayObjectWrapperController;
            var_15["null"] = ScrollbarLiftController;
            var_15["null"] = DropMenuController;
            var_15["null"] = DropMenuItemController;
            var_15["null"] = FrameController;
            var_15["null"] = HeaderController;
            var_15["null"] = HTMLTextController;
            var_15["null"] = IconController;
            var_15["null"] = ItemListController;
            var_15["null"] = ItemListController;
            var_15["null"] = ItemListController;
            var_15["null"] = ItemGridController;
            var_15["null"] = ItemGridController;
            var_15["null"] = ItemGridController;
            var_15["null"] = TextLabelController;
            var_15["null"] = PasswordFieldController;
            var_15["null"] = RadioButtonController;
            var_15["null"] = RegionController;
            var_15["null"] = ScalerController;
            var_15["null"] = ScrollbarController;
            var_15["null"] = ScrollbarController;
            var_15["null"] = ButtonController;
            var_15["null"] = ButtonController;
            var_15["null"] = ButtonController;
            var_15["null"] = ButtonController;
            var_15["null"] = ScrollbarLiftController;
            var_15["null"] = ScrollbarLiftController;
            var_15["null"] = WindowController;
            var_15["null"] = WindowController;
            var_15["null"] = ScrollableItemListWindow;
            var_15["null"] = SelectorController;
            var_15["null"] = TabSelectorController;
            var_15["null"] = TabButtonController;
            var_15["null"] = TabContainerButtonController;
            var_15["null"] = ContainerController;
            var_15["null"] = TabContextController;
            var_15["null"] = TabSelectorController;
            var_15["null"] = TextController;
            var_15["null"] = TextFieldController;
            var_15["null"] = ToolTipController;
         }
      }
      
      public static function getWindowClassByType(param1:uint) : Class
      {
         return var_15[param1];
      }
   }
}
