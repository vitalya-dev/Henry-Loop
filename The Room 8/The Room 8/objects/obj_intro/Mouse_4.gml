switch (state) {
  case "START":
    if (image_index < 3) {
      image_index += 1;
    } else {
      obj_camera_manager.follow_player();  
      image_index = 0;    
      state = "FINISH";
      
    }
    break;
  case "FINISH":
    break;
}
