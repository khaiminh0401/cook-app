import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'first_interface.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Text('Cooker App'),
    );
  }
}
