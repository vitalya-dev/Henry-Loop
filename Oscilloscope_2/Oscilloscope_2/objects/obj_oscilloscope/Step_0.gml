switch (state) {
  case "WORKING":
    if (screen.state != "ON") {
      screen.state = "ON";
    }
    array_insert(screen.data, 0, obj_signal.value);
    break;
  case "OFF":
    if (screen.state != "OFF") {
      screen.state = "OFF";
    }
    break;
  case "PAUSE":
    break;
}

screen.x = x - 43;
screen.y = y - 21;

btn_on.x = x + 31;
btn_on.y = y + 14;