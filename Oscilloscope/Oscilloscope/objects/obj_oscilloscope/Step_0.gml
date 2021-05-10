switch (state) {
  case "WORKING":
    array_insert(screen.data, 0, obj_signal.value);
    break;
  case "OFF":
    break;
  case "PAUSE":
    break;
}