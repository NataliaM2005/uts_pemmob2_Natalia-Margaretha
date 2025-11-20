import 'package:flutter/material.dart';
import 'maps_page.dart';

class InfoListPage extends StatelessWidget {
  const InfoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tempat = [
      {'nama': 'Jakarta', 'lat': -6.175392, 'lng': 106.827153},
      {'nama': 'Bandung', 'lat': -6.914744, 'lng': 107.609810},
      {'nama': 'Bogor', 'lat': -6.595038, 'lng': 106.816635},
      {'nama': 'Surabaya', 'lat': -7.250445, 'lng': 112.768845},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("List Informasi Tempat")),
      body: ListView.builder(
        itemCount: tempat.length,
        itemBuilder: (context, index) {
          final item = tempat[index];

          return ListTile(
            title: Text(item['nama']),
            subtitle: Text("${item['lat']}, ${item['lng']}"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MapsPage(
                    lat: item['lat'],
                    lng: item['lng'],
                    title: item['nama'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
