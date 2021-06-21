origin_top_left_x = x - sprite_xoffset + 16;
origin_top_left_y = y - sprite_yoffset;

draw_self();
for (var i = 0; i < 4; i++) {
  for (var j = 0; j < 10; j++) {
    switch (card[i, j]) {
      case "_":
        break;
      case "x":
        break;
      case 1:
        draw_sprite(spr_cardrecord_small, 0, origin_top_left_x + j * 16 + 8, origin_top_left_y + i * 16 + 8);
        break;
      default:
        draw_sprite(spr_cardrecord_start, 0, origin_top_left_x + j * 16 + 8, origin_top_left_y + i * 16 + 8);
        for (k = 1; k < card[i, j] - 1; k++) {
          draw_sprite(spr_cardrecord_middle, 0, origin_top_left_x + (j + k) * 16 + 8, origin_top_left_y + i * 16 + 8);
        }
        draw_sprite(spr_cardrecord_end, 0, origin_top_left_x + (j + card[i, j] - 1) * 16 + 8, origin_top_left_y + i * 16 + 8);
        break;
    }
  }
}


switch (state) {
  case "PRESSED":
    draw_sprite(spr_cardrecord_start, 0, origin_top_left_x + mouse_pressed_col * 16 + 8, origin_top_left_y + mouse_pressed_row * 16 + 8);
    for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 20); i++) {
      if (i == clamp(mouse_over_col, 0, 20)) {
        draw_sprite(spr_cardrecord_end, 0, origin_top_left_x + i * 16 + 8, origin_top_left_y + mouse_pressed_row * 16 + 8);
      } else {
        draw_sprite(spr_cardrecord_middle, 0, origin_top_left_x + i * 16 + 8, origin_top_left_y + mouse_pressed_row * 16 + 8);
      }
    }
    break;
}

