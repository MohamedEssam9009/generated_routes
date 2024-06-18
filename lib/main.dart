import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'routes.dart';
import 'routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generated Routes',
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutesName.firstScreen,
      home: const FirstScreen(),
    );
  }
}
