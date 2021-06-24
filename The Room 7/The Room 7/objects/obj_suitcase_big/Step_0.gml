var suitcase_cover_x1 = x - sprite_xoffset;
var suitcase_cover_y1 = y - sprite_yoffset;

var suitcase_cover_x2 = suitcase_cover_x1 + sprite_get_width(spr_suitcase_big);
var suitcase_cover_y2 = suitcase_cover_y1 + 24;

var letter_x1 = x - 28;
var letter_y1 = y;
var letter_x2 = letter_x1 + sprite_get_width(spr_letter_suitcase);
var letter_y2 = letter_y1 + sprite_get_height(spr_letter_suitcase);


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
    if (point_in_rectangle(mouse_x, mouse_y, letter_x1, letter_y1, letter_x2, letter_y2)) {
      letter_hover = true;
    } else {
      letter_hover = false;
    } 
    if (letter_hover && mouse_check_button_pressed(mb_left)) {
      obj_camera_manager.show_window("letter");
    }
    break;
}