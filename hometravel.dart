import 'package:flutter/material.dart';
import 'jenis.dart';
import 'travelbis.dart';
import 'travelminibus.dart';

class home extends StatelessWidget {
  home({super.key});
  final List<jenis> items = [
    jenis(name: 'Travel Bis', price: 400000),
    jenis(name: 'Travel Minibus', price: 200000)
  ];
  final List<Widget> rutes = [
    travelbis(),
    travelminibus(),
  ];
  @override
  Widget build(BuildContext context) {
    String? username = ModalRoute.of(context)?.settings.arguments as String?;
    if (username == null) {
      username = 'Guest';
    }
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/logobis.png',
              height: 200,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons
                    .error); // Tampilkan ikon error jika gagal memuat gambar
              },
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to the Home Page, ${username}!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "We hope you have an amazing day here!",
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                shrinkWrap:
                    true, // Agar ListView bisa berada dalam SingleChildScrollView
                physics:
                    NeverScrollableScrollPhysics(), // Nonaktifkan scroll dari ListView
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => rutes[index],
                          settings: RouteSettings(
                            arguments: items[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(child: Text(item.name)),
                            Expanded(
                              child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
