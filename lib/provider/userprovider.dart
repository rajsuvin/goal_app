import 'package:flutter/cupertino.dart';
import 'package:goal_app/provider/usermodel.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void setUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }

  void loginUser() {}
}
