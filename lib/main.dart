import 'package:daryo_uz/screens/main_screen.dart';
import 'package:daryo_uz/screens/search_screen.dart';
import 'package:daryo_uz/screens/tezes_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainScreen() ,
      routes: {
        SearchScreen.routeArgs:(context)=>SearchScreen(),
        TezesScreen.routeArgs:(context)=>TezesScreen(),
      },
    );
  }
}

