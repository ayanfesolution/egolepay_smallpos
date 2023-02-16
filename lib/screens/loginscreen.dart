import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class SmallPosLoginScreen extends StatefulWidget {
  const SmallPosLoginScreen({super.key});

  @override
  State<SmallPosLoginScreen> createState() => _SmallPosLoginScreenState();
}

class _SmallPosLoginScreenState extends State<SmallPosLoginScreen> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen', style: TextStyle(fontSize: getScreenHeight(16)),),
      ),
      body: SingleChildScrollView(child: Padding(
        padding: EdgeInsets.all(getScreenHeight(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                  hintStyle: TextStyle(fontSize: getScreenHeight(16))
              ),
            ),
            SizedBox(height: getScreenHeight(16)),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: getScreenHeight(16))
              ),
            ),
            SizedBox(height: getScreenHeight(16)),
            Container(
              width: double.infinity,
              height: getScreenHeight(50),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(getScreenHeight(10)),
              ),
              child: InkWell(
                onTap: () {
                  // TODO: Implement login functionality
                },
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getScreenHeight(16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getScreenHeight(16)),
            InkWell(
              onTap: () {
                // TODO: Implement forgot password functionality
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: getScreenHeight(15)
                ),
              ),
            ),
            SizedBox(height: getScreenHeight(8)),
            InkWell(
              onTap: () {
                // TODO: Implement sign up functionality
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: getScreenHeight(15)
                ),
              ),
            ),
          ],
        ),
      ),)
    );
  }
}