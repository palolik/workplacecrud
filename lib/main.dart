// this one is for running the code in websitee phone

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/coachingpages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAYLDJWWqAeoAg8kz6gc6inoMylngFNX-E",
      projectId: "workplease-19076",
      messagingSenderId: "508776454852",
      appId: "1:508776454852:web:f6f21a3f7cc579e2e98791",
    ),
  );
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // CHeck for Errors
        if (snapshot.hasError) {
          // ignore: avoid_print
          print("Something went Wrong");
        }
        // once Completed, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter Firestore CRUD',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
