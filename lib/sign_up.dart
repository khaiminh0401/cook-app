import 'package:flutter/material.dart';
import 'custom_clip.dart';
import 'custom_textformfield.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _nameController = TextEditingController();
  final _repassController = TextEditingController();

  bool _isObscureText = true;
  bool? isChecked = false;
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
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
                            // RichText(
                            //     text: TextSpan(
                            //         style: DefaultTextStyle.of(context).style,
                            //         children: const <TextSpan>[
                            //       TextSpan(
                            //           text: 'To ',
                            //           style: TextStyle(
                            //               color: Colors.white, fontSize: 25)),
                            //       TextSpan(
                            //           text: 'CooksCorner',
                            //           style: TextStyle(
                            //               color: Colors.white,
                            //               fontSize: 25,
                            //               fontWeight: FontWeight.bold))
                            //     ]))
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
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: _nameController,
                      hintText: 'Enter your name',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      labelText: 'Name',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Type your Email',
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: _passController,
                      hintText: 'Enter your Pass',
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
                      height: 30,
                    ),
                    CustomTextField(
                      controller: _repassController,
                      hintText: 'Re-Enter your Password',
                      prefixIcon: const Icon(Icons.lock),
                      labelText: 'Re-Password',
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                activeColor: Colors.orange,
                                onChanged: (newBool) => setState(() {
                                      isChecked = newBool;
                                    })),
                            const SizedBox(
                                width:
                                    8.0), // Khoảng cách giữa Checkbox và Text
                            const Text('I agree to the terms and conditions'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal:
                                    _width / 2 - 50), // Chỉnh kích thước nút
                            backgroundColor: Colors.orange,
                            foregroundColor:
                                Colors.white, // Màu sắc nền của nút
                            textStyle: const TextStyle(fontSize: 15)),
                        child: const Text('Sign Up Now'))
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => (Login()))),
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Sign in now',
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
