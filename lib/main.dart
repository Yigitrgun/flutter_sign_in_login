import 'package:flutter/material.dart';

import 'package:flutter_sign_in_login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData.dark().copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 50),
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          //errorColor: ColorsItems.renk,
          appBarTheme: AppBarTheme(
            // appbar Yükseklik ayarı  toolbarHeight: 200,
            toolbarHeight: 200,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 77, 167, 251),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // titleTextStyle: TextStyle(
            //   color: Color.fromARGB(255, 84, 146, 245),
            // fontWeight: FontWeight.bold,
            // fontSize: 30),
          )),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
