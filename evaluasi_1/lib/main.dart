import 'package:flutter/material.dart';
import 'hewan.dart';
import 'kucing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final kucing1 = Kucing("Mimi", 4.5, "Oranye");
    final kucing2 = Kucing("Miko", 4.0, "Putih");

    kucing1.makan(200);
    kucing2.makan(150);

    final hasil = [
      "Nama: ${kucing1.nama}, Berat: ${kucing1.berat.toStringAsFixed(2)} kg, Warna Bulu: ${kucing1.warnaBulu}",
      "Nama: ${kucing2.nama}, Berat: ${kucing2.berat.toStringAsFixed(2)} kg, Warna Bulu: ${kucing2.warnaBulu}",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Data Kucing')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: hasil.map((text) => Text(text)).toList(),
          ),
        ),
      ),
    );
  }
}