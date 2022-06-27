import 'package:flutter/material.dart';

class SiteAbout extends StatelessWidget {
  const SiteAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Text('About'),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text('Kembali'))
        ],
      )),
    );
  }
}
