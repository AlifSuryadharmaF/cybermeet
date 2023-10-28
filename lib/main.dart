import 'package:flutter/material.dart';
import 'ui/bergabung.dart';
import 'ui/with_data_page.dart';
import 'ui/home.dart';
import 'ui/lainnya.dart';
import 'ui/preview.dart';

void main() {
  runApp(const MyApp());
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
        '/lainnya': (context) => const Another(title: 'Lainnya'),
        '/bergabung': (context) => const JoinMeet(title: 'Bergabung'),
        '/preview': (context) => const PreviewMeet(title: 'Preview'),
        '/withdata': (context) => const WithDataPage(title: 'Dengan Data')
      },
    );
  }
}
