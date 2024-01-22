import 'package:objectbox/objectbox.dart';

@Entity()
class ScoreModel {
  @Id()
  int id;
  
  String lenguage;
 
  int score;

  ScoreModel({this.id = 0,required this.lenguage, required this.score});
}
