import 'package:flutter/material.dart';
import 'custom_clip.dart';
import 'custom_textformfield.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              // Nền Background
              ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.orange[700],
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25),
                            ),
                            Row(
                              children: [
                                Text(
                                  'To ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Text(
                                  'CooksCorner',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: const Column(
                    children: [],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Type your Email',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextField(
                      controller: _passController,
                      hintText: 'Type your Pass',
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Password',
                      isObscureText: _isObscureText,
                      suffixIcon: IconButton(
                        icon: _isObscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () => setState(() {
                          _isObscureText = !_isObscureText;
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Align(
                        alignment:
                            Alignment.centerRight, // Đặt Align sang phải
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print(_height);
                          print(_height / 4);
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: _width / 2 -
                                    50), // Chỉnh kích thước nút
                            backgroundColor: Colors.orange,
                            foregroundColor:
                                Colors.white, // Màu sắc nền của nút
                            textStyle: const TextStyle(fontSize: 15)),
                        child: const Text('Sign In Now'))
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('I don\'t have an account? '),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SignupPage())),
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Sign up now',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
