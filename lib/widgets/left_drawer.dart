import 'package:flutter/material.dart';
import 'package:mental_health_tracker/screens/menu.dart';
// TODO: Impor halaman MoodEntryFormPage jika sudah dibuat
import 'package:mental_health_tracker/screens/moodentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Mental Health Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo jaga kesehatan mentalmu setiap hari disini!",
                  textAlign: TextAlign.center, // Menambahkan center alignment
                  style: TextStyle(
                    fontSize: 15, // Menentukan ukuran font 15
                    color: Colors.white, // Warna teks putih
                    fontWeight: FontWeight.normal, // Mengatur weight menjadi normal
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Mood'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoodEntryFormPage(), // Routing ke MoodEntryFormPage
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}