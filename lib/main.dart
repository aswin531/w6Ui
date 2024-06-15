import 'package:flutter/material.dart';
import 'package:weeek6_screens/add_info/screen1.dart';
import 'package:weeek6_screens/catalogue/screenfour.dart';
import 'package:weeek6_screens/manage_store/screen2.dart';
import 'package:weeek6_screens/order/screen3/orderscreen.dart';
import 'package:weeek6_screens/payments/screensix.dart';
import 'package:weeek6_screens/premium/screenfive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme:
            const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      ),
      debugShowCheckedModeBanner: false,
      home: PageView(children: [
        const Screenone(),
        ScreenTwo(),
         ScreenSix(),
        const ScreenFive(),
        const OrderScreen(),
        const ScreenFour()
      ]),
    );
  }
}
