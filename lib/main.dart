import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/modules/splash/splash_screen.dart';
import 'package:project/utils/bloc_observer/bloc_observer.dart';
import 'package:project/utils/cubits/data_cubit/data_cubit.dart';

import 'modules/child_app/drawing_screen/drawing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final alarmSettings = AlarmSettings(
    id: 0,
    dateTime: DateTime.now().add(
      const Duration(seconds: 10),
    ),
    assetAudioPath: 'assets/alarm/music.mp3',
    loopAudio: true,
    vibrate: true,
    fadeDuration: 3.0,
    notificationTitle: 'This is the title',
    notificationBody: 'This is the body',
    enableNotificationOnKill: true,
  );
  runApp(const MyApp());
  await Alarm.init();
  await Alarm.set(alarmSettings: alarmSettings);
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
