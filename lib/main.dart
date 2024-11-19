
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/provider/cart_provider.dart';
import 'package:flutter_application_1/screens/welcomScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import '../provider/auth_provider.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        title: "Health_Diagnose",
        theme: ThemeData(
          primaryColor: Color(0xFF3E69FE), // Set the primary color
          textTheme: GoogleFonts.openSansTextTheme(), // Set the font using Google Fonts
    appBarTheme: AppBarTheme(
    color: Color(0xFF3E69FE), // Set the appbar background colo
    ),
        ),
      ),
    );
  }
}
