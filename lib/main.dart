import 'package:flutter/material.dart';
import 'package:camerlearn/loginPage/loginPage.dart';
import 'package:camerlearn/homePage/homePage.dart';

void main() =>runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CamerLearn',
      theme: ThemeData(
         
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: loginPage(),

      initialRoute: '/',
      routes: {
        '/': (context) => loginPage(),
        '/home': (context) => homePage(),
      },
    );
  }
}


