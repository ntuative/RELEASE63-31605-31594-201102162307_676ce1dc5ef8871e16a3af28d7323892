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
         param1["null"] = const_189;
         param1["bound_to_parent_rect"] = const_94;
         param1["child_window"] = const_1009;
         param1["embedded_controller"] = const_1084;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_740;
         param1["mouse_dragging_target"] = const_208;
         param1["mouse_dragging_trigger"] = const_364;
         param1["mouse_scaling_target"] = const_310;
         param1["mouse_scaling_trigger"] = const_426;
         param1["horizontal_mouse_scaling_trigger"] = const_231;
         param1["vertical_mouse_scaling_trigger"] = const_244;
         param1["observe_parent_input_events"] = const_1145;
         param1["optimize_region_to_layout_size"] = const_519;
         param1["parent_window"] = const_1163;
         param1["relative_horizontal_scale_center"] = const_171;
         param1["relative_horizontal_scale_fixed"] = const_134;
         param1["relative_horizontal_scale_move"] = const_350;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1058;
         param1["relative_scale_fixed"] = const_826;
         param1["relative_scale_move"] = const_1100;
         param1["relative_scale_strech"] = const_1160;
         param1["relative_vertical_scale_center"] = const_170;
         param1["relative_vertical_scale_fixed"] = const_131;
         param1["relative_vertical_scale_move"] = const_388;
         param1["relative_vertical_scale_strech"] = const_377;
         param1["on_resize_align_left"] = const_777;
         param1["on_resize_align_right"] = const_529;
         param1["on_resize_align_center"] = const_505;
         param1["on_resize_align_top"] = const_845;
         param1["on_resize_align_bottom"] = const_466;
         param1["on_resize_align_middle"] = const_507;
         param1["on_accommodate_align_left"] = const_1121;
         param1["on_accommodate_align_right"] = const_504;
         param1["on_accommodate_align_center"] = const_847;
         param1["on_accommodate_align_top"] = const_1198;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_832;
         param1["route_input_events_to_parent"] = const_573;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1045;
         param1["scalable_with_mouse"] = const_1017;
         param1["reflect_horizontal_resize_to_parent"] = const_509;
         param1["reflect_vertical_resize_to_parent"] = const_443;
         param1["reflect_resize_to_parent"] = const_275;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
