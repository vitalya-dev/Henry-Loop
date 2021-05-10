switch (state) {
  case "WORKING":
    array_insert(screen.data, array_length(screen.data), obj_signal.value);
    break;
  case "OFF":
    break;
  case "PAUSE":
    break;
}