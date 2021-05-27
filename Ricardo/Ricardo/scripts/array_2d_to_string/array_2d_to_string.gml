function array_2d_to_string(arr, rows, cols) {
  var array_str = ""
  for (var i = 0; i < rows; i++) {
    for (var j = 0; j < cols; j++) {
      array_str += string(arr[i, j])
    }
  }
  return array_str;
}