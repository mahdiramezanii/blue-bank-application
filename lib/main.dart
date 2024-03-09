import 'package:blue_bank_application/screan/login_screan.dart';
import 'package:blue_bank_application/screan/transfer_screan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TransferScrean(),
    );
  }
}
