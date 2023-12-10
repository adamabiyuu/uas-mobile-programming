import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:uas/tmp/navbar.dart';
// // import 'package:uas/tmp/SplashScreen.dart';
// import 'package:uas/tmp/list_page.dart';
// import 'package:uas/tmp/login.dart';
// // import 'package:uas/tmp/profile.dart';
// import 'package:uas/tmp/register.dart';
import 'package:uas/tmp/view/splash_screen.dart';

late final FirebaseApp app; 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
    options: FirebaseOptions(
      apiKey: "AIzaSyAEEEYGZUh4_Qtr84feLnSM0HzVRXqLI80",
      appId: "1:531602764064:android:448cf297f73ac27b452745",
      messagingSenderId: "Messaging sender id here",
      projectId: "review-jam-tangan",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Rating Watch App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // home: SplashScreen(),
      // home: Login(),
      // home: Register(),
      // home: ListPage(),
      // home: Profile(),
      // home: Navbar(),
      
      // SplashScreen
      //  home: SplashScreen(
      //   seconds: 8,
      //   navigateAfterSeconds:Login(),
      //   title: new Text(
      //     'SplashScreen Example',
      //     style: new TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 20.0,
      //         color: Colors.white),
      //   ),
      //   backgroundColor: Colors.lightBlue[200],
      // )
    );
  }
}
