import 'package:flutter/material.dart';
import 'hewan.dart'; // import class Hewan

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Membuat objek Hewan
  final hewan = Hewan("Kucing", 4.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan 2 - Hewan"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nama Hewan: ${hewan.nama}",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              Text(
                "Berat: ${hewan.berat.toStringAsFixed(2)} kg",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Makan
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    hewan.makan(1.0); // tambah 1 kg
                  });
                },
                child: const Text("Makan 🍗"),
              ),

              const SizedBox(height: 15),

              // Tombol Lari
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    hewan.lari(0.5); // kurangi 0.5 kg
                  });
                },
                child: const Text("Lari 🏃‍♂"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}