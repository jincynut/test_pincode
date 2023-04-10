bool validatePincode(String pincode) {

  //ข้อ1.
  if (pincode.length < 6) {
    return false;
  }
  //ข้อ2.
  for (int i = 0; i < pincode.length - 2; i++) {
    if (pincode[i] == pincode[i+1] && pincode[i+1] == pincode[i+2]) {
      return false;
    }
  }

  //ข้อ3.
  for (int i = 0; i < pincode.length - 2; i++) {
    if (int.parse(pincode[i]) + 1 == int.parse(pincode[i+1]) &&
        int.parse(pincode[i+1]) + 1 == int.parse(pincode[i+2])) {
      return false;
    }
  }

  //ข้อ4.
  int count = 0;
  for (int i = 0; i < pincode.length - 1; i++) {
    if (pincode[i] == pincode[i+1]) {
      count++;
      if (count > 1) {
        return false;
      }
      i++;
    }
  }

  return true;
}
