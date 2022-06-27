import 'package:flutter/material.dart';

class SiteProfile extends StatelessWidget {
  final String? id;
  const SiteProfile({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('Profile ID : $id '),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
