import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supply_on_campus/firebase_options.dart';
import 'package:supply_on_campus/pages/LoginPage.dart';
import 'package:supply_on_campus/pages/Registration.dart';
import 'package:supply_on_campus/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supply On Campus',
      home: const Registration(),
      routes: {
        '/home': (context) => const HomePage(),
        '/registration': (context) => const Registration(),
        '/login': (context) => const Loginpage(),
      },
    );
  }
}
