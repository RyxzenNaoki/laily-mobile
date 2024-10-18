import 'package:flutter/material.dart';
import 'package:project_pertama/jenis.dart';

class travelbis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final brg = ModalRoute.of(context)!.settings.arguments as jenis;
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Travel Bis'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ini adalah Halaman ' +
              brg.name +
              ' dengan harga : ' +
              brg.price.toString()),
        ],
      )),
    );
  }
}
