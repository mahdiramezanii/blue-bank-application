import 'package:blue_bank_application/screan/activity_screan.dart';
import 'package:blue_bank_application/screan/cart_screan.dart';
import 'package:blue_bank_application/screan/login_screan.dart';
import 'package:blue_bank_application/screan/transfer_screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fr'), 
      ],
      debugShowCheckedModeBanner: false,
      home: CartScrean(),
    );
  }
}
