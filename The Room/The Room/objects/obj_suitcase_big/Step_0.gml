var gcounter_x1 = x - 28 - sprite_get_xoffset(spr_gcounter_suitcase);
var gcounter_y1 = y - sprite_get_yoffset(spr_gcounter_suitcase);
var gcounter_x2 = gcounter_x1 + sprite_get_width(spr_gcounter_suitcase);
var gcounter_y2 = gcounter_y1 + sprite_get_height(spr_gcounter_suitcase);


var oscilloscope_x1 = x + 12 - sprite_get_xoffset(spr_oscilloscope_suitcase);
var oscilloscope_y1 = y - sprite_get_yoffset(spr_oscilloscope_suitcase);
var oscilloscope_x2 = oscilloscope_x1 + sprite_get_width(spr_oscilloscope_suitcase);
var oscilloscope_y2 = oscilloscope_y1 + sprite_get_height(spr_oscilloscope_suitcase);

var suitcase_cover_x1 = x - sprite_xoffset;
var suitcase_cover_y1 = y - sprite_yoffset;

var suitcase_cover_x2 = suitcase_cover_x1 + sprite_get_width(spr_suitcase_big);
var suitcase_cover_y2 = suitcase_cover_y1 + 24;


switch (state) {
  case "CLOSE":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "OPEN";
    }
    break;
  case "OPEN":
    if (point_in_rectangle(mouse_x, mouse_y, gcounter_x1, gcounter_y1, gcounter_x2, gcounter_y2)) {
      gcounter_hover = true;
    } else {
      gcounter_hover = false;
    }
    if (point_in_rectangle(mouse_x, mouse_y, oscilloscope_x1, oscilloscope_y1, oscilloscope_x2, oscilloscope_y2)) {
      oscilloscope_hover = true;
    } else {
      oscilloscope_hover = false;
    }
    if (gcounter_hover && gcounter_window && mouse_check_button_pressed(mb_left) && gcounter_window.x + gcounter_window.y == 2 * 999999) {
      gcounter_window.x = x;
      gcounter_window.y = y;
    }
    if (oscilloscope_hover && oscilloscope_window && mouse_check_button_pressed(mb_left) && oscilloscope_window.x + oscilloscope_window.y == 2 * 999999) {
      oscilloscope_window.x = x;
      oscilloscope_window.y = y;
    }
    if (point_in_rectangle(mouse_x, mouse_y, suitcase_cover_x1, suitcase_cover_y1, suitcase_cover_x2, suitcase_cover_y2) and mouse_check_button_pressed(mb_left)) {
      state = "CLOSE";
    }
    break;
}