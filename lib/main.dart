import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:socialmedia/responsive/mobile_screen_layout.dart';
import 'package:socialmedia/responsive/responsive_layout_screen.dart';
import 'package:socialmedia/responsive/web_screen_layout.dart';
import 'package:socialmedia/screens/login_screen.dart';
import 'package:socialmedia/utils/colors.dart';
import 'firebase_options.dart';

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
        title: 'Flutter Demo',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        // home: const ResponsiveLayout(
        //   mobileScreenLayout: MobileScreenLayout(),
        //   webScreenLayout: WebScreenLayout(),
        // ),
        home: const LoginScreen());
  }
}
