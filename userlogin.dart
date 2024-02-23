import 'dart:io';

userLoginform() {
  var userEmail = "";
  var userPas = "";
  bool isAdminlogin = false;

  List<Map<String, String>> userAdminList = [
    {"email": "admin@gmail.com", "password": "admin1234"},
    {"email": "rashid@gmail.com", "password": "rashid1234"},
    {"email": "ali@gmail.com", "password": "ali1234"},
  ];

  while (isAdminlogin == false) {
    stdout.write("Enter Your Email: ");
    userEmail = stdin.readLineSync()!;

    stdout.write("Enter Your Password: ");
    userPas = stdin.readLineSync()!;

    for (var i = 0; i < userAdminList.length; i++) {
      if (userEmail == userAdminList[i]["email"] &&
          userPas == userAdminList[i]["password"]) {
        print("Login sucessfully....");
        isAdminlogin = true;
      }
    }
    if (isAdminlogin == false) {
      print("Please try Again...");
    }
  }
}
