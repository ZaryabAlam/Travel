import 'package:travelapp/routing/routing.dart';
import 'package:flutter/material.dart';

// Don't forgot to give me a stars  GITHUB {`HMIDA71`}.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  Routing(),
    );
  }
}
