import 'package:flutter/material.dart';
import 'package:weeek6_screens/order/screen3/screen3.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        centerTitle: true,
        title: const Text('Order #1688068'),
      ),
      body: const ScreenThree(),
    );
  }
}
