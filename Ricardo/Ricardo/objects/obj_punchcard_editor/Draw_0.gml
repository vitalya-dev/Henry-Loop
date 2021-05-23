draw_self();
for (var i = 0; i < 5; i++) {
  for (var j = 0; j < 21; j++) {
    switch (punchcard[i, j]) {
      case "_":
        break;
      case "x":
        break;
      case 1:
        var xx = x + (j * 16 + 8) * image_xscale;
        var yy = y + (i * 16 + 8) * image_yscale;
        draw_sprite_ext(spr_precord_small, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        break;
      default:
        var xx = x + (j * 16 + 8) * image_xscale;
        var yy = y + (i * 16 + 8) * image_yscale;
        draw_sprite_ext(spr_precord_start, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        for (k = 1; k < punchcard[i, j] - 1; k++) {
          xx = x + ((j + k) * 16 + 8) * image_xscale;
          draw_sprite_ext(spr_precord_middle, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        }
        xx = x + ((j + punchcard[i, j] - 1) * 16 + 8) * image_xscale;
        draw_sprite_ext(spr_precord_end, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
        break;
    }
  }
}

switch (state) {
  case "PRESSED":
    var xx = x + (mouse_pressed_col * 16 + 8) * image_xscale;
    var yy = y + (mouse_pressed_row * 16 + 8) * image_yscale;
    draw_sprite_ext(spr_precord_start, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 20); i++) {
      xx = x + (i * 16 + 8) * image_xscale;
      if (i == clamp(mouse_over_col, 0, 20)) {
        draw_sprite_ext(spr_precord_end, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
      } else {
        draw_sprite_ext(spr_precord_middle, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
      }
    }
    break;
}