import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'authentication/login_page.dart';
import 'authentication/signup_page.dart';
import 'firebase_options.dart';
import 'screen/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print("Firebase initialization failed: $e");
  }
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
          "/home": (context) => Home(),
          "/login": (context) => LoginPage(),
          "/signup": (context) => SignupPage()
        },
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
