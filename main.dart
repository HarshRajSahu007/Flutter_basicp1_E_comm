import 'package:flutter/material.dart';

import 'screens/login_page.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
