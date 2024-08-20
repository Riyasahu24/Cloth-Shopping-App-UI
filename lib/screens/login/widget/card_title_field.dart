// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardTitleWithField extends StatelessWidget {
  const CardTitleWithField(
      {super.key, required this.title, required this.value});
  final String title;
  final TextEditingController value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
        controller: value,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            hintText: 'Enter Name...',
            labelText: title,
            labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
            contentPadding: EdgeInsets.all(0),
            border: InputBorder.none,
            // suffixIcon: Icon(Icon),
            hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
