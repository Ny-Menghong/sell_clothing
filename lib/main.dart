import 'package:ecommerce/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
     return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 11, 12, 12),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Roboto",
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6254e8)),
        ),
        home: MainPage(),
      );}
    );
  }
}
