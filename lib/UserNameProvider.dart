import 'package:flutter/cupertino.dart';

class UserNameProvider extends ChangeNotifier{
  String ? UserName ;

  UserNameProvider({
     this.UserName,
  });

  void ChangeUserName({
    required String NewUserName,})async{
    UserName = NewUserName;
    notifyListeners();
  }

}