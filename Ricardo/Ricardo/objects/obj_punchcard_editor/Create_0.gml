mouse_over_row = -1;
mouse_over_col = -1;
mouse_pressed_row = -1;
mouse_pressed_col = -1;
punchcard = [];
state = "IDLE";
for (var i = 0; i < 5; i++) {
  for (var j = 0; j < 21; j++) {
      punchcard[i, j] = "_";
  }
}
