import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data dummy
    final List<Map<String, String>> items = [
      {'title': 'Item 1', 'subtitle': 'Description for item 1', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 2', 'subtitle': 'Description for item 2', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 3', 'subtitle': 'Description for item 3', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 4', 'subtitle': 'Description for item 4', 'image': 'https://via.placeholder.com/150'},
      {'title': 'Item 5', 'subtitle': 'Description for item 5', 'image': 'https://via.placeholder.com/150'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: Stack(
        children: [
          // Daftar
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                leading: Image.network(item['image']!), // Gambar di sebelah kiri
                title: Text(item['title']!), // Judul
                subtitle: Text(item['subtitle']!), // Deskripsi
                onTap: () {
                  // Aksi saat item diklik
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Clicked on ${item['title']}')),
                  );
                },
              );
            },
          ),
          // Tombol di bawah kanan
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Aksi saat tombol diklik
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Floating Action Button clicked')),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
