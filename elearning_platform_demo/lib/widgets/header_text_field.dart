
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTextField extends StatelessWidget {

  String title;
  Widget child;

  HeaderTextField({super.key, required this.title, this.child = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(width: 6,),
        child
      ],
    );
  }
}
