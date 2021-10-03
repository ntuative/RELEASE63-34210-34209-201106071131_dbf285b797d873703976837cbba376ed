package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_192;
         param1["bound_to_parent_rect"] = const_105;
         param1["child_window"] = const_1298;
         param1["embedded_controller"] = const_1200;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_890;
         param1["mouse_dragging_target"] = const_305;
         param1["mouse_dragging_trigger"] = const_413;
         param1["mouse_scaling_target"] = const_367;
         param1["mouse_scaling_trigger"] = const_478;
         param1["horizontal_mouse_scaling_trigger"] = const_286;
         param1["vertical_mouse_scaling_trigger"] = const_285;
         param1["observe_parent_input_events"] = const_1205;
         param1["optimize_region_to_layout_size"] = const_592;
         param1["parent_window"] = const_1349;
         param1["relative_horizontal_scale_center"] = const_204;
         param1["relative_horizontal_scale_fixed"] = const_172;
         param1["relative_horizontal_scale_move"] = const_453;
         param1["relative_horizontal_scale_strech"] = const_391;
         param1["relative_scale_center"] = const_1190;
         param1["relative_scale_fixed"] = const_967;
         param1["relative_scale_move"] = const_1373;
         param1["relative_scale_strech"] = const_1185;
         param1["relative_vertical_scale_center"] = const_227;
         param1["relative_vertical_scale_fixed"] = const_174;
         param1["relative_vertical_scale_move"] = const_247;
         param1["relative_vertical_scale_strech"] = const_335;
         param1["on_resize_align_left"] = const_869;
         param1["on_resize_align_right"] = const_537;
         param1["on_resize_align_center"] = const_647;
         param1["on_resize_align_top"] = const_1008;
         param1["on_resize_align_bottom"] = const_543;
         param1["on_resize_align_middle"] = const_558;
         param1["on_accommodate_align_left"] = const_1302;
         param1["on_accommodate_align_right"] = const_535;
         param1["on_accommodate_align_center"] = const_833;
         param1["on_accommodate_align_top"] = const_1186;
         param1["on_accommodate_align_bottom"] = const_494;
         param1["on_accommodate_align_middle"] = const_974;
         param1["route_input_events_to_parent"] = const_544;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1193;
         param1["scalable_with_mouse"] = const_1319;
         param1["reflect_horizontal_resize_to_parent"] = const_586;
         param1["reflect_vertical_resize_to_parent"] = const_637;
         param1["reflect_resize_to_parent"] = const_354;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1351;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
