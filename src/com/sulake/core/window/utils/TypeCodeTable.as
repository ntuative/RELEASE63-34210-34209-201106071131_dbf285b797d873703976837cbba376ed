package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_905;
         param1["bitmap"] = const_510;
         param1["border"] = const_773;
         param1["border_notify"] = const_1809;
         param1["bubble"] = const_736;
         param1["bubble_pointer_up"] = const_1167;
         param1["bubble_pointer_right"] = const_1215;
         param1["bubble_pointer_down"] = const_1343;
         param1["bubble_pointer_left"] = const_1364;
         param1["button"] = const_533;
         param1["button_thick"] = const_1006;
         param1["button_icon"] = const_1853;
         param1["button_group_left"] = const_761;
         param1["button_group_center"] = const_805;
         param1["button_group_right"] = const_759;
         param1["canvas"] = const_1002;
         param1["checkbox"] = const_729;
         param1["closebutton"] = const_1144;
         param1["container"] = const_452;
         param1["container_button"] = const_907;
         param1["display_object_wrapper"] = const_933;
         param1["dropmenu"] = const_591;
         param1["dropmenu_item"] = const_515;
         param1["frame"] = const_390;
         param1["frame_notify"] = const_1944;
         param1["header"] = const_968;
         param1["html"] = const_1191;
         param1["icon"] = const_1254;
         param1["itemgrid"] = const_1276;
         param1["itemgrid_horizontal"] = const_610;
         param1["itemgrid_vertical"] = const_851;
         param1["itemlist"] = const_1226;
         param1["itemlist_horizontal"] = const_434;
         param1["itemlist_vertical"] = const_444;
         param1["label"] = const_874;
         param1["maximizebox"] = const_1820;
         param1["menu"] = const_1704;
         param1["menu_item"] = const_1749;
         param1["submenu"] = const_1376;
         param1["minimizebox"] = const_1810;
         param1["notify"] = const_1723;
         param1["null"] = const_838;
         param1["password"] = const_775;
         param1["radiobutton"] = const_902;
         param1["region"] = const_420;
         param1["restorebox"] = const_1780;
         param1["scaler"] = const_480;
         param1["scaler_horizontal"] = const_1724;
         param1["scaler_vertical"] = const_1948;
         param1["scrollbar_horizontal"] = const_498;
         param1["scrollbar_vertical"] = const_921;
         param1["scrollbar_slider_button_up"] = const_1294;
         param1["scrollbar_slider_button_down"] = const_1195;
         param1["scrollbar_slider_button_left"] = const_1142;
         param1["scrollbar_slider_button_right"] = const_1280;
         param1["scrollbar_slider_bar_horizontal"] = const_1286;
         param1["scrollbar_slider_bar_vertical"] = const_1353;
         param1["scrollbar_slider_track_horizontal"] = const_1242;
         param1["scrollbar_slider_track_vertical"] = const_1261;
         param1["scrollable_itemlist"] = const_1909;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1324;
         param1["selector"] = const_821;
         param1["selector_list"] = const_908;
         param1["submenu"] = const_1376;
         param1["tab_button"] = const_728;
         param1["tab_container_button"] = const_1231;
         param1["tab_context"] = const_454;
         param1["tab_content"] = const_1216;
         param1["tab_selector"] = const_714;
         param1["text"] = const_794;
         param1["input"] = const_715;
         param1["toolbar"] = const_1768;
         param1["tooltip"] = const_451;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
