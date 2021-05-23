switch (state) {
  case "OPEN":
    if (mouse_check_button_pressed(mb_left)) {
      var dec_width = sprite_get_width(spr_card) * image_xscale;
      var dec_height = sprite_get_height(spr_card) * image_yscale;
      var x1 = x + 3 * image_xscale - dec_width;
      var y1 = y + 4 * image_yscale;
      var x2 = x + 3 * image_xscale;
      var y2 = y + 4 * image_yscale + dec_height;
      var px = mouse_x;
      var py = mouse_y;
      if (point_in_rectangle(px, py, x1, y1, x2, y2)) {
        card_clicked = true
      }
    }
    else if (card_clicked == true) {
      card_clicked = false;
    }
    break;
  case "CLOSE":
    if (card_clicked == true) {
      card_clicked = false;
    }
    break;
}