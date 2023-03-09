import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:forte/myapp_icons.dart';
import 'package:forte/screens/account_screen.dart';
import 'package:forte/screens/home_screen.dart';
import 'package:forte/screens/login_screen.dart';
import 'package:forte/screens/reset_password_screen.dart';
import 'package:forte/screens/signup_screen.dart';
import 'package:forte/screens/verify_email_screen.dart';
import 'package:forte/screens/tests_screen.dart';
import 'package:forte/services/firebase_streem.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //запускает Firebase до запуска приложения
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forte',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home': (context) => const HomeScreen(),
        '/account': (context) => const AccountScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/verify_email': (context) => const VerifyEmailScreen(),
        '/tests': (context) => const TestsScreen(),
        '/testeas': (context) => const TestEasScreen(),
        '/testmed': (context) => const TestMedScreen(),
        '/testdif': (context) => const TestDifScreen(),
      },
    );
  }
}
