draw_self();
draw_sprite_ext(notes_sprites[current_note_name_index], 0, x + 10 * image_xscale, y + 6 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(notes_duration_sprites[current_note_duration_index], 0, x + 17 * image_xscale, y + 6 * image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);