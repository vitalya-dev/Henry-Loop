draw_self();
for (var i = 0; i < 5; i++) {
  for (var j = 0; j < 21; j++) {
    switch (punchcard[i, j]) {
      case "_":
        break;
      case "x":
	      break;
      case 1:
        draw_sprite(spr_precord_small, 0, x + j * 16 + 8, y + i * 16 + 8);
        break;
      default:
         draw_sprite(spr_precord_start, 0, x + j * 16 + 8, y + i * 16 + 8);
         for (k = 1; k < punchcard[i, j] - 1; k++) {
           draw_sprite(spr_precord_middle, 0, x + (j + k) * 16 + 8, y + i * 16 + 8);
         }
         draw_sprite(spr_precord_end, 0, x + (j + punchcard[i, j] - 1) * 16 + 8, y + i * 16 + 8);
         break;
    }
  }
}

switch (state) {
  case "PRESSED":
    draw_sprite(spr_precord_start, 0, x + mouse_pressed_col * 16 + 8, y + mouse_pressed_row * 16 + 8);
    for (var i = mouse_pressed_col + 1; i <= clamp(mouse_over_col, 0, 20); i++) {
      if (i == clamp(mouse_over_col, 0, 20)) {
        draw_sprite(spr_precord_end, 0, x + i * 16 + 8, y + mouse_pressed_row * 16 + 8);
      } else {
        draw_sprite(spr_precord_middle, 0, x + i * 16 + 8, y + mouse_pressed_row * 16 + 8);
      }
    }
    break;
}