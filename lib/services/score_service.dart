import 'package:proyecto_m6/models/score_model.dart';
import 'package:proyecto_m6/objectbox.g.dart';

Future<void> saveScore(String lenguage, int scoreIn) async {
  final store = await openStore();
  final box = store.box<ScoreModel>();

  // Buscar el registro existente
  final existingScore =
      box.query(ScoreModel_.lenguage.equals(lenguage)).build().findFirst();

  if (existingScore != null) {
    // Si el registro existe, modificarlo
    if (scoreIn > existingScore.score) {
      existingScore.score = scoreIn;
      box.put(existingScore);
    
    } 
  } else {
    // Si el registro no existe, crear uno nuevo
    final score = ScoreModel(lenguage: lenguage, score: scoreIn);
    box.put(score);
  }
   store.close();
}
// crear un metodo que devuelva todos los score con los lebguajes que ocupa la solucion si no existe registro colocar un 0
Future<List<ScoreModel>> getAllScores() async {
  final store = await openStore();
  final box = store.box<ScoreModel>();
  final scores = box.getAll();
  store.close();
  return scores;
}
