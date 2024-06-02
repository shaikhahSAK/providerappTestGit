import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/UserNameProvider.dart';
//-----------------------------------------------------------------
class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}
//-----------------------------------------------------------------------------
class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('User Profile Page', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigo,
      ),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('User Name:',style: TextStyle(fontWeight:FontWeight.bold),),

              //watch to read from provider
              Text(context.watch<UserNameProvider>().UserName!),
            ],
          )
        ],
      ),),
    );
  }
}
