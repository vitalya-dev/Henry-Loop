draw_self();
draw_sprite_ext(spr_window_1, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_gcounter, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(wheel.sprite_index, wheel.image_index, wheel.x, wheel.y, wheel.image_xscale, wheel.image_yscale, wheel.image_angle, wheel.image_blend, wheel.image_alpha);
draw_sprite_ext(spr_gcounter_on_btn, 0, x + 7, y + 20, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

switch (state) {
  case "OFF":
    break;
  case "TUNED":
  case "UNTUNED":
    draw_sprite_ext(notes_sprites[current_note_name_index], 0, x - 7, y - 18, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite_ext(notes_duration_sprites[current_note_duration_index], 0, x, y - 18, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    break;
}