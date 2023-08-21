import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network('src',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
                ),
          ),
        ),
      ),
    );
  }
}