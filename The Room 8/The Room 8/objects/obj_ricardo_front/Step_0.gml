switch (state) {
  case "INIT":
    if (progress < 1) {
      progress += 1 / (fps);
    } else if (alarm[0] == -1) {
      progress = 1
      alarm[0] = fps
    }
}
 