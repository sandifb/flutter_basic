import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () => Routemaster.of(context).push('/site/about'),
                child: Text('Halaman About')),
            ElevatedButton(
                onPressed: () => Routemaster.of(context).push('/site/legal'),
                child: Text('Halaman Legal')),
            ElevatedButton(
                onPressed: () =>
                    Routemaster.of(context).push('/site/profile/123-1231fasdf'),
                child: Text('Halaman Profile')),
            Text('Section 1 A'),
            Text('Section 1 B'),
          ],
        ),
        Text('Section 2'),
      ],
    )));
  }
}
