switch (state) {
  case "CLOSE":
    draw_sprite_ext(spr_suitcase, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    break;
  case "OPEN":
    draw_sprite_ext(spr_suitcase, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite_ext(spr_gcounter_suitcase, gcounter_hover ? 1 : 0, x - 28, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite_ext(spr_oscilloscope_suitcase, oscilloscope_hover ? 1 : 0, x + 12, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    break;
}