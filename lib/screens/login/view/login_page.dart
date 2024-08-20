// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constant/app_color/color.dart';
import 'package:shopping_app/screens/login/view/forget_password.dart';
import 'package:shopping_app/screens/login/widget/card_title_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 40,
                ),
                CardTitleWithField(
                  title: 'Email',
                  value: _email,
                ),
                SizedBox(
                  height: 10,
                ),
                CardTitleWithField(
                  title: 'Password',
                  value: _password,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget your password'),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => ForgetPasswordPage(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_right_alt_outlined,
                          size: 24,
                          color: AppColors().primaryColor,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize:
                          Size.fromWidth(MediaQuery.of(context).size.width),
                      backgroundColor: AppColors().primaryColor),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text('Or sign up with social account'),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Google.png'),
                    Image.asset('assets/images/Facebook.png'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
