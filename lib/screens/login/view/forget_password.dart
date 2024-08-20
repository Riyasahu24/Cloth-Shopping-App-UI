// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/constant/app_color/color.dart';
import 'package:shopping_app/screens/login/widget/card_title_field.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({super.key});

  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forget Password',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
                'Please, enter your email address. You will receive a link to create a new password via email'),
            SizedBox(
              height: 20,
            ),
            CardTitleWithField(
              title: 'Email',
              value: _email,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                  backgroundColor: AppColors().primaryColor),
              child: Text(
                'SEND',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
