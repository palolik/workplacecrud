import 'package:webcheck2/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bg,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        ),
        canvasColor: bg,
      ),
      home: const MainScreen(),
    );
  }
}
