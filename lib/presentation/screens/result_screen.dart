import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:proyecto_m6/presentation/screens/stadistic_screen.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  ResultScreenState createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            widget.score > 7
                ? 'assets/animated/success.json'
                : 'assets/animated/error.json',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              widget.score > 7 ? "Felicidades" : "Vuelva a intentarlo",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "You Score is",
            style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score * 10}%",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StatisticScreen(),
                    ));
              },
              child: const Text(
                "Estadisticas",
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: ElevatedButton(
              onPressed: () {
                context.pushReplacement('/');
              },
              child: const Text(
                "Volver al menu",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
