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
         param1["background"] = const_785;
         param1["bitmap"] = const_683;
         param1["border"] = const_861;
         param1["border_notify"] = const_1589;
         param1["button"] = const_538;
         param1["button_thick"] = const_805;
         param1["button_icon"] = const_1529;
         param1["button_group_left"] = const_835;
         param1["button_group_center"] = const_744;
         param1["button_group_right"] = const_842;
         param1["canvas"] = const_838;
         param1["checkbox"] = const_889;
         param1["closebutton"] = const_1029;
         param1["container"] = const_381;
         param1["container_button"] = const_875;
         param1["display_object_wrapper"] = const_724;
         param1["dropmenu"] = const_431;
         param1["dropmenu_item"] = const_558;
         param1["frame"] = const_401;
         param1["frame_notify"] = const_1555;
         param1["header"] = const_651;
         param1["html"] = const_974;
         param1["icon"] = const_1047;
         param1["itemgrid"] = const_1002;
         param1["itemgrid_horizontal"] = const_551;
         param1["itemgrid_vertical"] = const_874;
         param1["itemlist"] = const_1113;
         param1["itemlist_horizontal"] = const_338;
         param1["itemlist_vertical"] = const_387;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1531;
         param1["menu"] = const_1592;
         param1["menu_item"] = const_1391;
         param1["submenu"] = const_1014;
         param1["minimizebox"] = const_1385;
         param1["notify"] = const_1379;
         param1["null"] = const_655;
         param1["password"] = const_752;
         param1["radiobutton"] = const_618;
         param1["region"] = const_829;
         param1["restorebox"] = const_1464;
         param1["scaler"] = const_689;
         param1["scaler_horizontal"] = const_1459;
         param1["scaler_vertical"] = const_1614;
         param1["scrollbar_horizontal"] = const_570;
         param1["scrollbar_vertical"] = const_813;
         param1["scrollbar_slider_button_up"] = const_1081;
         param1["scrollbar_slider_button_down"] = const_1032;
         param1["scrollbar_slider_button_left"] = const_1087;
         param1["scrollbar_slider_button_right"] = const_1086;
         param1["scrollbar_slider_bar_horizontal"] = const_1004;
         param1["scrollbar_slider_bar_vertical"] = const_1129;
         param1["scrollbar_slider_track_horizontal"] = const_1148;
         param1["scrollbar_slider_track_vertical"] = const_1056;
         param1["scrollable_itemlist"] = const_1386;
         param1["scrollable_itemlist_vertical"] = const_481;
         param1["scrollable_itemlist_horizontal"] = const_1119;
         param1["selector"] = const_865;
         param1["selector_list"] = const_799;
         param1["submenu"] = const_1014;
         param1["tab_button"] = const_454;
         param1["tab_container_button"] = const_1108;
         param1["tab_context"] = const_389;
         param1["tab_content"] = const_1111;
         param1["tab_selector"] = const_811;
         param1["text"] = const_438;
         param1["input"] = const_876;
         param1["toolbar"] = const_1465;
         param1["tooltip"] = const_367;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
