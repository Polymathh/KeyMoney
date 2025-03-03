import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:keymoney/firebase_options.dart';
// import 'package:keymoney/screens/home_page.dart';
import 'package:keymoney/screens/splashscreen.dart';
import 'package:keymoney/screens/loginscreen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCEdspCuQkfiVe9xAqf-aePn9Gq5uu-65Y",
      authDomain: "keymoney-63043.firebaseapp.com",
      projectId: "keymoney-63043",
      storageBucket: "keymoney-63043.firebasestorage.app",
      messagingSenderId: "426047988651",
      appId: "1:426047988651:web:cf6324fd60f9cd37f668ee"
    ),
  );
  runApp(const KeyMoney());
}

class KeyMoney extends StatelessWidget {
  const KeyMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KeyMoney',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => Splashscreen(),
        // '/home': (context) => HomePage(),
        '/loginscreen.dart': (context) => Loginscreen(),
      },
    );
  }
}


