import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: [Colors.white, Colors.blue, Colors.red],
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return Center(
            child: Container(
              child: Text('Page $index'),
            ),
          );
        },
      ),
    );
  }
}
