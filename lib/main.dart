import 'package:flutter/material.dart';
import 'home/category/category_details.dart';
import 'home/home_screen.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      routes: {
        HomeScreen.routeName : (_)=>HomeScreen()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: Color(0xFF208CF7),
        appBarTheme: AppBarTheme(
          color: Color(0xFF37C021)
        ),
      ),
    );
  }
}