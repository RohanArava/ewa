import 'package:flutter/material.dart';
import 'screens/default.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        iconTheme: const IconThemeData(color: Colors.red),
        useMaterial3: true,
      ),

      home: const Default(),
      routes: const{
      },
    );
  }
}