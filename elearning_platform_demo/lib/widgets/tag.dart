
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  String title;

  Tag({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 8),
      ),
    );
  }
}
