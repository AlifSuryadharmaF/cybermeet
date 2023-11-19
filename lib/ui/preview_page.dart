import 'package:flutter/material.dart';

class PreviewMeet extends StatelessWidget {
  final String title;
  const PreviewMeet({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview Meeting'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'qwa-brl-qpp',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 300, // ubah lebar foto
                    height: 400, // ubah tinggi foto
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/wildan.png'), // Replace 'your_image.jpg' with the actual image path
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {
                            // Aksi ketika tombol di tekan
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.video_camera_front),
                          onPressed: () {
                            // Aksi ketika tombol di tekan
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.mic),
                          onPressed: () {
                            // Aksi ketika tombol di tekan
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                icon: Icon(Icons.screen_share),
                label: Text('Bagikan Layar'),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 5, // Mengatur ketebalan divider
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    icon: Icon(Icons.send),
                    label: Text('Kirim Undangan'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 35), // Change size here
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
