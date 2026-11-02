import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Mobile'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(size: 96),
            const SizedBox(height: 24),
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Nama : Sofia Zahra'),
            const Text('NIM : 4241250009'),
            const Text('Kelas : PSIK 24C'),
            const SizedBox(height: 20),
            // Widget tambahan pilihan: ElevatedButton & Icon
            ElevatedButton.icon(
              onPressed: () {
                // Aksi saat tombol ditekan
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Tugas Selesai'),
            ),
          ],
        ),
      ),
    );
  }
}