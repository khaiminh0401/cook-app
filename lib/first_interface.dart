import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 750), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
            color: Colors.orange[700],
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: Image.asset(
                    'assets/image/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const Expanded(
                    flex: 1,
                    child: Text('Version 0.0.1',
                        style: TextStyle(color: Colors.white)))
              ],
            )),
      ),
    ));
  }
}
