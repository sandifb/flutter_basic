import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/site/profile.dart';
import 'package:routemaster/routemaster.dart';

import '../../pages/site/about.dart';
import '../../pages/site/legal.dart';
import '../../pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

final routes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: Welcome()),
  '/site/about': (_) => MaterialPage(child: SiteAbout()),
  '/site/legal': (_) => MaterialPage(child: SiteLegal()),
  '/site/profile/:id': (info) =>
      MaterialPage(child: SiteProfile(id: info.pathParameters['id'])),
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      routeInformationParser: RoutemasterParser(),
    );
  }
}
