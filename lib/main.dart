import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/modules/splash/splash_screen.dart';
import 'package:project/utils/bloc_observer/bloc_observer.dart';
import 'package:project/utils/cubits/data_cubit/data_cubit.dart';

import 'modules/child_app/drawing_screen/drawing_screen.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        // home: DrawingScreen(),
        home: const SplashScreen(),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: .84),
            child: child!,
          );
        },
      ),
    );
  }
}
