import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/event.dart';
import 'package:http/http.dart' as http;
import '../api/api_event.dart';
import 'dart:convert';
import 'dart:async';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int _currentIndex = 0;
  double iconSize = 30.0;
  TextStyle whiteTextStyle = TextStyle(color: Colors.white);

  late Future<List<Event>> _events;
  @override
  void initState() {
    super.initState();
    _events = ApiEvent().listOfEvent();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/user.png',
              ),
              onPressed: () {
                // Tindakan ketika tombol profil ditekan
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.purple],
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/cityicon.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/jadwalkan.png',
                            width: iconSize,
                            height: iconSize,
                          ),
                          onPressed: () {
                            // Tindakan ketika tombol rumah ditekan
                          },
                        ),
                        Text("Jadwalkan", style: whiteTextStyle),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/bergabung.png',
                            width: iconSize,
                            height: iconSize,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/bergabung');
                          },
                        ),
                        Text("Bergabung", style: whiteTextStyle),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/lainnya.png',
                            width: iconSize,
                            height: iconSize,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/lainnya');
                          },
                        ),
                        Text("Lainnya", style: whiteTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 14.0,
                color: Colors.black,
              ),
              ListTile(
                leading: Image.asset('assets/images/jadwal.png'),
                title: Text(
                  "Webinar EDU 207 - Tips to Start a Freelance Career",
                  style: whiteTextStyle,
                ),
                subtitle: Text("Jumat 16.00 - 17.00", style: whiteTextStyle),
                onTap: () {
                  // Tindakan ketika item 1 dipilih
                },
              ),
              ListTile(
                leading: Image.asset('assets/images/jadwal.png'),
                title: Text(
                  "Perancangan Aplikasi Bergerak",
                  style: whiteTextStyle,
                ),
                subtitle: Text("Senin 07.00 - 10.00", style: whiteTextStyle),
                onTap: () {
                  // Tindakan ketika item 2 dipilih
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.purple,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                width: iconSize,
                height: iconSize,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/baru.png',
                width: iconSize,
                height: iconSize,
              ),
              label: 'Rapat Baru',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/history.png',
                width: iconSize,
                height: iconSize,
              ),
              label: 'History',
            ),
          ],
        ),
      ),
    );
  }
}
