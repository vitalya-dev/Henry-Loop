draw_self();

draw_sprite_ext(screen.sprite_index, screen.image_index, x - 43, y - 21, screen.image_xscale, screen.image_yscale, screen.image_angle, screen.image_blend, screen.image_alpha);
draw_surface(screen.graph_surface, x - 43, y - 21);

draw_sprite_ext(btn_on.sprite_index, btn_on.image_index, x + 31, y + 14, btn_on.image_xscale, btn_on.image_yscale, btn_on.image_angle, btn_on.image_blend, btn_on.image_alpha);
draw_sprite_ext(btn_pause.sprite_index, btn_pause.image_index, x + 18, y, btn_pause.image_xscale, btn_pause.image_yscale, btn_pause.image_angle, btn_pause.image_blend, btn_pause.image_alpha);
draw_sprite_ext(btn_left.sprite_index, btn_left.image_index, x + 18, y - 10, btn_left.image_xscale, btn_left.image_yscale, btn_left.image_angle, btn_left.image_blend, btn_left.image_alpha);
draw_sprite_ext(btn_right.sprite_index, btn_right.image_index, x + 30, y - 10, btn_right.image_xscale, btn_right.image_yscale, btn_right.image_angle, btn_right.image_blend, btn_right.image_alpha);
draw_sprite_ext(btn_plus.sprite_index, btn_plus.image_index, x + 18, y - 21, btn_plus.image_xscale, btn_plus.image_yscale, btn_plus.image_angle, btn_plus.image_blend, btn_plus.image_alpha);
draw_sprite_ext(btn_minus.sprite_index, btn_minus.image_index, x + 30, y - 21, btn_minus.image_xscale, btn_minus.image_yscale, btn_minus.image_angle, btn_minus.image_blend, btn_minus.image_alpha);