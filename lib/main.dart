import 'package:flutter/material.dart';
import 'package:untitled1/halaman_utama.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'kuis Pam',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // A widget which will be started on application startup
      home: HalamanUtama(),
    );
  }
}
