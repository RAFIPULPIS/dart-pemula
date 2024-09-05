import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Gambar yang memenuhi setengah layar
          Container(
            height: MediaQuery.of(context).size.height * 0.5, // Setengah dari tinggi layar
            width: double.infinity, // Lebar penuh
            child: Image.network(
              'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
              fit: BoxFit.cover, // Menyesuaikan gambar agar memenuhi container
            ),
          ),
          // Kotak yang mengambil sisa ruang dari setengah layar
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
                    'vaccine types available',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Teks berwarna putih agar kontras
                    ),
                  ),
                  SizedBox(height: 10),

                  // Deskripsi dengan lorem ipsum 50 kata
                  Text(
                    'there are types of vaccines available to accerelate hard immunity so that this  pandemic will quickly dissapear',
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
              Navigator.pushNamed(context, 'Detail/');
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
