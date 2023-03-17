import 'package:down/modules/chat/chat.dart';
import 'package:down/modules/donor_list_contact/donor_list_contact.dart';
import 'package:flutter/material.dart';

import 'modules/about_us/about_us.dart';
import 'modules/access_screen/access_screen.dart';
import 'modules/alphabet_screen/alphabet_screen.dart';
import 'modules/chat_bot/chat_bot.dart';
import 'modules/donor_info_screen/donor_info_screen.dart';
import 'modules/donor_list/donor_list_request.dart';
import 'modules/gallary/gallary_screen.dart';
import 'modules/healthy_food/healthy_food.dart';
import 'modules/healthy_food_inner/healty_food_inner.dart';
import 'modules/login_screen/login_screen.dart';
import 'modules/numbers_screen/numbers_screen.dart';
import 'modules/prescription/prescription_screen.dart';
import 'modules/prescription_history/prescription_history.dart';
import 'modules/questions_screen/questions_screen.dart';
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
      // home: QuestionsScreen(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
      home: PageView(
        children:  [
          QuestionsScreen(),
          PrescriptionHistory(),
          PrescriptionScreen(),
          HealtyFoodInnerScreen(),
          HealtyFoodScreen(),
          AboutUsScreen(),
          NumbersScreen(),
          AlphabetScreen(),
          ChatBot(),
          ObjectDetectionScreen(),
          AccessScreen(),
          LoginScreen(),
          RegisterScreen(),
          DonorInfoScreen(),
          DonorlistRequest(),
          DonorlistContact(),
          Chat(),
        ],
      ),
    );
  }
}
