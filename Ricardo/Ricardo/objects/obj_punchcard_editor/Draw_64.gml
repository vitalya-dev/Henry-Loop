draw_text(0, 0, string(mouse_over_row) + ":" + string(mouse_over_col));
draw_text(80, 0, state);


for (var i = 0; i < 5; i++) {
  for (var j = 0; j < 21; j++) {
      draw_text(j * 25, i * 15 + 20, punchcard[i, j]);
  }
}