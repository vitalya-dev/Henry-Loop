mouse_over_row = -1;
mouse_over_col = -1;
mouse_pressed_row = -1;
mouse_pressed_col = -1;
card = [];
state = "IDLE";
for (var i = 0; i < 4; i++) {
  for (var j = 0; j < 10; j++) {
      card[i, j] = "_";
  }
}