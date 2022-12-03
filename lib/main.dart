import 'package:down/modules/chat/chat.dart';
import 'package:down/modules/donor_list_contact/donor_list_contact.dart';
import 'package:flutter/material.dart';

import 'modules/access_screen/access_screen.dart';
import 'modules/donor_info_screen/donor_info_screen.dart';
import 'modules/donor_list/donor_list_request.dart';
import 'modules/login_screen/login_screen.dart';
import 'modules/register_screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'D21',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: PageView(
        children: const [
          AccessScreen(),
          LoginScreen(),
          RegisterScreen(),
          DonorInfoScreen(),
          DonorlistRequest(),
          DonorlistContact(),
          Chat()
        ],
      ),
    );
  }
}
