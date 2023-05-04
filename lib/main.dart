import 'package:flutter/material.dart';
import 'package:qr_code_app/src/pages/home_page.dart';
import 'package:qr_code_app/src/pages/qr_code_generator_page.dart';
import 'package:qr_code_app/src/pages/qr_scanner_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomePage(),
        'QR':(context) => const QrCodeGeneratorPage(),
        'QRScan':(context) => const QRScanPage(),
      },
      theme: ThemeData(
        //primaryColor no funciona
        primarySwatch: Colors.deepPurple
      ),
    );
  }
}