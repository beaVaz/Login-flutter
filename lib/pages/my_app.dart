import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilaapp/pages/login_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green, textTheme: GoogleFonts.doHyeonTextTheme()),
    
      home: const LoginPage(),
    );
  }
}

