obj_ricardo_red_button.on_click = function() {
  alarm[0] = -1;
  switch (state) {
    case "INIT":
      obj_card_small.image_xscale = obj_card_small.image_xscale < 1 ? 1 : 0;
      if (obj_card_small.image_xscale == 1) {
        state = "ERROR";
      }
      break;
    case "READY":
      break;
    case "ERROR":
      obj_card_small.image_xscale = obj_card_small.image_xscale < 1 ? 1 : 0;
      if (obj_card_small.image_xscale == 0) {
        state = "INIT";
        progress = 0;
      }
      break;
  }
}
