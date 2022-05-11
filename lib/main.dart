import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'with_tabbar.dart';

bool isSwitched = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  if (isSwitched = false) {}
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const WithTabBar(),
    );
  }
}
