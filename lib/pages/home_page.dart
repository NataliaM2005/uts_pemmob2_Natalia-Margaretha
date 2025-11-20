import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // HEADER KECIL (tinggi 70px)
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              color: Colors.blue,
              child: const Text(
                "Menu Navigasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.map),
              title: const Text("Maps"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/maps');
              },
            ),

            ListTile(
              leading: Icon(Icons.list_alt),
              title: const Text("List Informasi"),
              onTap: () => Navigator.pushNamed(context, '/info'),
            ),

            ListTile(
              leading: Icon(Icons.info_outline),
              title: const Text("Tentang Aplikasi"),
              onTap: () => Navigator.pushNamed(context, '/about'),
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Selamat Datang di Map Navigator App",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
