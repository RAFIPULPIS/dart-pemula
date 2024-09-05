import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Gambar yang memenuhi setengah layar
          Container(
            height: MediaQuery.of(context).size.height * 0.5, 
            width: double.infinity, // Lebar penuh
            child: Image.network(
              'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
              fit: BoxFit.cover, 
            ),
          ),
          
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15), // Padding dalam kotak
              margin: EdgeInsets.symmetric(horizontal: 20), // Margin luar kotak
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8), // Background biru dengan opacity 80%
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), // Border radius atas kiri
                  topRight: Radius.circular(20), // Border radius atas kanan
                ),
                border: Border.all(
                  color: Colors.blueAccent, // Warna border
                  width: 2, // Ketebalan border
                ),
              ),
              child: Column(
                children: [
                  // Title
                  Text(
                    'daily vaccine ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Teks berwarna putih agar kontras
                    ),
                  ),
                  SizedBox(height: 10),

                  // Deskripsi dengan lorem ipsum 50 kata
                  Text(
                    'vaccine doses are available every weekday and make sure you miss getting the first day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Teks berwarna putih agar kontras
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          // Tombol untuk menuju halaman berikutnya
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'List/');
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
