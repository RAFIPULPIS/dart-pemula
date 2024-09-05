import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data dummy
    final List<Map<String, String>> items = [
      {'title': 'Item 1', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 2', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 3', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 4', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 5', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 6', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 7', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 8', 'image': 'https://via.placeholder.com/150'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 10, // Jarak antar kolom
          mainAxisSpacing: 10, // Jarak antar baris
        ),
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GridTile(
            child: GestureDetector(
              onTap: () {
                // Aksi saat item diklik
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Clicked on ${item['title']}')),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      item['image']!,
                      fit: BoxFit.cover, // Menyesuaikan gambar agar memenuhi area
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    item['title']!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
