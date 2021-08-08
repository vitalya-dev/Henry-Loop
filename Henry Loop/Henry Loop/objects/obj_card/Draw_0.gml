origin_top_left_x = x - sprite_xoffset + 16 * image_xscale;
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
        draw_sprite_ext(spr_cardrecord_small, 0, origin_top_left_x + image_xscale * (j * 16 + 8), origin_top_left_y + image_yscale * (i * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        break;
      default:
        draw_sprite_ext(spr_cardrecord_start, 0, origin_top_left_x + image_xscale * (j * 16 + 8), origin_top_left_y + image_yscale * (i * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        for (k = 1; k < card[i, j] - 1; k++) {
          draw_sprite_ext(spr_cardrecord_middle, 0, origin_top_left_x + image_xscale * ((j + k) * 16 + 8), origin_top_left_y + image_yscale * (i * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        }
        draw_sprite_ext(spr_cardrecord_end, 0, origin_top_left_x + image_xscale * ((j + card[i, j] - 1) * 16 + 8), origin_top_left_y + image_yscale * (i * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        break;
    }
  }
}


switch (state) {
  case "PRESSED":
    draw_sprite_ext(spr_cardrecord_start, 0, origin_top_left_x + image_xscale * (mouse_pressed_col * 16 + 8), origin_top_left_y + image_yscale * (mouse_pressed_row * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 20); i++) {
      if (i == clamp(mouse_over_col, 0, 20)) {
        draw_sprite_ext(spr_cardrecord_end, 0, origin_top_left_x + image_xscale * (i * 16 + 8), origin_top_left_y + image_yscale * (mouse_pressed_row * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
      } else {
        draw_sprite_ext(spr_cardrecord_middle, 0, origin_top_left_x + image_xscale * (i * 16 + 8), origin_top_left_y + image_yscale * (mouse_pressed_row * 16 + 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
      }
    }
    break;
}

