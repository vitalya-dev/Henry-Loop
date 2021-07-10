switch (state) {
  case "NOISE":
    image_index = 1;
    break;
  case "ON":
    image_index = 0;
    if (!access_granted) {
      state = "IDENTIFICATION";
    }
    break;
  case "IDENTIFICATION":
    if (alarm[2] == -1) {
      alarm[2] = 2 * fps;  
    }
    break;
  default:
    alarm[2] = -1;
    image_index = 0;
    break;
}