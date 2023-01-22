import 'package:flutter/material.dart';
import 'package:shopping/Pages/home_page.dart';

import '../components/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 20.0, left: 15.0, bottom: 20.0),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 40.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15),
              child: const FieldBox(
                icon: Icon(Icons.mail_outline),
                label: 'Email Address',
                passIcon: Icon(Icons.check_circle_outline),
                hideText: false,
              ),
            ),
            const SizedBox(height: 28.0),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15),
              child: const FieldBox(
                icon: Icon(Icons.lock),
                label: 'Password',
                passIcon: Icon(Icons.remove_red_eye_outlined),
                hideText: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 15.0),
                ),
              ),
            ),
            const SizedBox(height: 52.0),
            InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const GoodsPage())));
              }),
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff23daa3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
              child: Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 2.0,
                  )),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2.0,
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Image(
                      image: AssetImage('images/google.png'),
                      height: 140.0,
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage('images/apple.png'),
                      height: 65.0,
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage('images/facebook-logo.png'),
                      height: 60.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "Create Account",
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.orange),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
