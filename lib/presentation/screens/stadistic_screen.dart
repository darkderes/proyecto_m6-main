import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto_m6/models/score_model.dart';
import 'package:proyecto_m6/services/score_service.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  StatisticScreenState createState() => StatisticScreenState();
}

class StatisticScreenState extends State<StatisticScreen> {
  List<ScoreModel> scores = [];

  @override
  void initState() {
    super.initState();
    getAllScore();
  }

  Future<void> getAllScore() async {
    scores = await getAllScores();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(

          children: [
           
            const Padding(
              padding: EdgeInsets.only(top:50.0),
              child: Text(
                'Estadisticas',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
             width: MediaQuery.of(context).size.width *
                 0.5,
             height: MediaQuery.of(context).size.height * 0.8, // Ajusta el ancho según tus necesidades
              child: ListView.builder(
                itemCount: scores.length,
                itemBuilder: (context, index) {
                  final score = scores[index];
                  return ListTile(
                    title: Center(child: Text(score.lenguage, style: const TextStyle(color: Colors.white ,fontSize: 30 ),)),
                    subtitle: Center(child: Text("${score.score * 10}%", style: const TextStyle(color:Colors.orange ,fontSize: 25,fontWeight: FontWeight.bold ),)),
                  );
                },
              ),
            ),
             ElevatedButton(
               
               onPressed: () {
                context.pushReplacement('/');
               
               },
               child: const Text(
                 "Volver al menu",
               ),
             ),
          ],
        ),
        
        
      ),
    );
  }
}
