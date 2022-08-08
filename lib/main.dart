import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insurego/resources/auth_methods.dart';
import 'package:insurego/scrEENS/rewards.dart';
import 'package:insurego/scrEENS/home_screen.dart';
import 'package:insurego/screens/login_screen.dart';
import 'package:insurego/screens/video_call_screen.dart';
import 'package:insurego/utils/colors.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,

      title: ('insurego'),

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/video-call': (context) => const VideoCallScreen(),
      },
       home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot) {


          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            return const HomeScreen();
          }

          return const LoginScreen();
        },
      ),
    );
  }
}