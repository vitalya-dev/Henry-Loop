var suitcase_cover_x1 = x - sprite_xoffset;
var suitcase_cover_y1 = y - sprite_yoffset;

var suitcase_cover_x2 = suitcase_cover_x1 + sprite_width;
var suitcase_cover_y2 = suitcase_cover_y1 + 24;

switch (state) {
  case "CLOSE":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      state = "OPEN";
      image_index = 1;
    }
    obj_letter_small.image_xscale = 0;
    obj_letter_small.image_yscale = 0;
    break;
  case "OPEN":
    if (point_in_rectangle(mouse_x, mouse_y, suitcase_cover_x1, suitcase_cover_y1, suitcase_cover_x2, suitcase_cover_y2) and mouse_check_button_pressed(mb_left)) {
      state = "CLOSE";
      image_index = 0;
    }
    obj_letter_small.image_xscale = 1;
    obj_letter_small.image_yscale = 1;
    break;
}