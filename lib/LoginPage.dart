import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UserNameProvider.dart';
import 'UserProfilePage.dart';
//--------------------------------------------------------
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
//----------------------------------------------------------
class _LoginPageState extends State<LoginPage> {
  @override

  //VAR:
  //jsut for test git hub
   final UserNameController = TextEditingController();

  //FUN:
  //-------------------------------------------------------
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter your name'),
            SizedBox(height: 20,),
            TextField(
              controller: UserNameController,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                //read --> to chang the value of the provider
                context.read<UserNameProvider>().ChangeUserName(NewUserName: UserNameController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfilePage() ));
              },
              child: Text('Submit'),

            ),

          ],
        ),
      ),
    );
  }
}
