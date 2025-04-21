import 'package:flutter/material.dart';
import 'package:text_style/text_style.dart';

void main() {
  TextStyleConfig.setPrimaryColor(Colors.red);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Text Style Example',
        home: Scaffold(
          body: Container(
              color: Colors.black,
              child: Center(
                child: Text("data",style: T.s12w700.primary,),)),
        )
    );
  }
}

