import 'package:flutter/material.dart';

class SiteLegal extends StatelessWidget {
  const SiteLegal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            onPressed: () => Navigator.pop(context), child: Text('Kembali')),
      ),
    );
  }
}
