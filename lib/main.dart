import 'package:facebook_ui_flutter/facebook_ui/facebook.ui.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return  MaterialApp(
      home:const FacebookUI(),
      theme: ThemeData(fontFamily: 'Nunito'),
    );
  }
}