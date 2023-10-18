import 'package:flutter/material.dart';

class Another extends StatelessWidget {
  final String title;
  Another({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lainnya'),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ProfileCard(
                profileImage: 'assets/images/user.png',
                username: 'Wildan Mujtaba',
                email: 'wildanoioi@gmail.com',
                phoneNumber: '+6286700991109',
                birthDate: '01/06/2003',
                password: '*****************',
              ),
              SizedBox(height: 16),
              SettingColumn(), // Menambahkan kolom pengaturan
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String profileImage;
  final String username;
  final String email;
  final String phoneNumber;
  final String birthDate;
  final String password;

  ProfileCard({
    required this.profileImage,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.birthDate,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final whiteTextStyle = TextStyle(color: Colors.white);

    return Card(
      color: Colors.lightBlue,
      elevation: 5,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Foto Profil',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Image.asset(
            profileImage,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {
              // Implementasi untuk mengubah foto profil
            },
            child: Text(
              'Ubah Foto Profil',
              style: whiteTextStyle,
            ),
          ),
          Divider(
            thickness: 5, // Mengatur ketebalan divider
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nama Pengguna:', style: whiteTextStyle),
                Row(
                  children: [
                    Text(username, style: whiteTextStyle),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Tambahkan fungsi ketika tombol edit ditekan di sini
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5, // Mengatur ketebalan divider
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email:', style: whiteTextStyle),
                Row(
                  children: [
                    Text(email, style: whiteTextStyle),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Tambahkan fungsi ketika tombol edit ditekan di sini
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5, // Mengatur ketebalan divider
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No. Handphone:', style: whiteTextStyle),
                Row(
                  children: [
                    Text(phoneNumber, style: whiteTextStyle),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Tambahkan fungsi ketika tombol edit ditekan di sini
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5, // Mengatur ketebalan divider
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tanggal Lahir:', style: whiteTextStyle),
                Row(
                  children: [
                    Text(birthDate, style: whiteTextStyle),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Tambahkan fungsi ketika tombol edit ditekan di sini
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5, // Mengatur ketebalan divider
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ubah Password:', style: whiteTextStyle),
                Row(
                  children: [
                    Text(password, style: whiteTextStyle),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Tambahkan fungsi ketika tombol edit ditekan di sini
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Pengaturan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24, // Menambahkan ukuran teks
            ),
          ),
        ),
        Divider(
          thickness: 5, // Mengatur ketebalan divider
        ),
        ListTile(
          leading: Icon(Icons.camera_enhance),
          title: Text('Meeting', style: TextStyle(color: Colors.white)),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              // Tambahkan fungsi ketika tombol Meeting ditekan di sini
            },
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Umum', style: TextStyle(color: Colors.white)),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              // Tambahkan fungsi ketika tombol Umum ditekan di sini
            },
          ),
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text('Aksesibilitas', style: TextStyle(color: Colors.white)),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              // Tambahkan fungsi ketika tombol Aksesibilitas ditekan di sini
            },
          ),
        ),
      ],
    );
  }
}
