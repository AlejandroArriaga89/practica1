import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1/card_planet.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final data = [
    CardPlanetData(
      title: "Red Bull Racing",
      subtitle: "Equipo de Fórmula 1",
      image: const AssetImage("assets/images/team-1.png"),
      backgroundColor:
          const Color.fromARGB(255, 10, 3, 114), // Rojo para Red Bull
      titleColor: Colors.white, // Texto en blanco
      subtitleColor: Colors.yellow, // Texto en amarillo
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "Ferrari",
      subtitle: "Equipo de Fórmula 1",
      image: const AssetImage("assets/images/team-2.png"),
      backgroundColor: const Color.fromRGBO(255, 0, 0, 1), // Rojo para Ferrari
      titleColor: Colors.black, // Texto en negro
      subtitleColor: Colors.yellow, // Texto en amarillo
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "Aston Martin",
      subtitle: "Equipo de Fórmula 1",
      image: const AssetImage("assets/images/team-3.png"),
      backgroundColor:
          const Color.fromARGB(255, 70, 133, 105), // Azul para Aston Martin
      titleColor: Colors.white, // Texto en blanco
      subtitleColor: Colors.green, // Texto en verde
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "McLaren",
      subtitle: "Equipo de Fórmula 1",
      image: const AssetImage("assets/images/team-4.png"),
      backgroundColor:
          const Color.fromARGB(255, 255, 198, 145), // Rojo para McLaren
      titleColor: Colors.white, // Texto en blanco
      subtitleColor: Colors.orange, // Texto en naranja
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
