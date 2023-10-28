import 'package:flutter/material.dart';

class JoinMeet extends StatelessWidget {
  final String title;
  const JoinMeet({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bergabung dalam Meeting'),
        centerTitle: true, // Mengatur agar judul berada di tengah
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16), // Jarak antara AppBar dan Column
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Masukkan judul atau kode meeting yang telah dibagikan oleh pembuat rapat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Kode Meeting',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/preview');
                    },
                    child: Text('Bergabung'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
