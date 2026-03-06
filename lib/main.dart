import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 2 Flutter',
      theme: ThemeData(
        // Menggunakan skema Warna yang soft
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent.shade100,
        ),
        useMaterial3: true,
      ),
      home: const SimpleProfilePage(),
    );
  }
}

class SimpleProfilePage extends StatelessWidget {
  const SimpleProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: const Color.fromARGB(255, 85, 214, 250),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Foto profil sederhana menggunakan icon
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 18, 222, 233),
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Mohammad Iqbal Ali Rohmatullah', // Nama lengkap kamu
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Mahasiswa Teknik Informatika',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              // Card informasi sederhana
              Card(
                color: Colors.white,
                elevation: 2,
                child: ListTile(
                  leading: const Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 249, 5, 9),
                  ),
                  title: const Text('Pamekasan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
