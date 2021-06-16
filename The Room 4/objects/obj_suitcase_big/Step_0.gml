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
    if (point_in_rectangle(mouse_x, mouse_y, suitcase_cover_x1, suitcase_cover_y1, suitcase_cover_x2, suitcase_cover_y2) and mouse_check_button_pressed(mb_left)) {
      state = "CLOSE";
    }
    break;
}