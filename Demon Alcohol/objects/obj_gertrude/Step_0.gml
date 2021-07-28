switch (state) {
  case "WAIT":
    visible = false;
    break;
  case "TALK":
    visible = true;
    break;
  case "READY TO KILL":
    if (keyboard_check(vk_anykey)) {
      audio_play_sound(Shot_blow_destruction, 10, false);
      obj_twardowski.dead = true;
      obj_twardowski.image_angle = -90;
      obj_twardowski.y += 10;
      alarm[1] = fps / 2;
      state = "DONE";
    }
    break;
  case "DONE":
    break;
}