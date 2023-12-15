import 'package:flutter/material.dart';
import 'package:lookodu/presentation/views/enterAmount_Page/enterAmount_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Manrope', // Set your custom font family
            fontSize: 16.0, // Set the default font size
            color: Colors.black, // Set the default text color
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ), darkTheme: ThemeData.dark().copyWith(
textTheme: TextTheme(
  bodyMedium: TextStyle(
    fontFamily: 'Manrope', // Set your custom font family
  ),
),
      // Define dark theme colors and other properties here
    ),
      home:  EnterAmountPage(),
    );
  }
}

