import 'package:flutter/material.dart';
import 'ui/with_data_page.dart';
import 'ui/home.dart';
import 'ui/lainnya.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberMeet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(title: 'Beranda'),
        '/lainnya': (context) => Another(title: 'Lainnya'),
        '/withdata': (context) => const WithDataPage(title: 'Dengan Data')
      },
    );
  }
}
