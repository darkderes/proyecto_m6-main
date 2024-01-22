import 'package:proyecto_m6/models/question_model.dart';

List<QuestionModel> questionsDart = [
 QuestionModel(
    question: '1. ¿Cuál es la palabra clave utilizada para declarar una lista en Dart?',
    answers: {
      'A. array': false,
      'B. list': true,
      'C. collection': false,
      'D. set': false,
    },
  ),
  QuestionModel(
    question: '2. ¿Cuál es la palabra clave utilizada para la declaración de una función en Dart?',
    answers: {
      'A. function': false,
      'B. func': false,
      'C. void': false,
      'D. void main()': true,
    },
  ),
  QuestionModel(
    question: '3. ¿Cómo se declara una variable en Dart?',
    answers: {
      'A. variable x;': false,
      'B. int x;': true,
      'C. x int;': false,
      'D. ambos B y C son correctos': false,
    },
  ),
  QuestionModel(
    question: '4. ¿Cuál es el operador de null-aware en Dart utilizado para acceder a una propiedad?',
    answers: {
      'A. .': false,
      'B. ?:': false,
      'C. ??': true,
      'D. ::': false,
    },
  ),
  QuestionModel(
    question: '5. ¿Cuál es el operador de asignación en Dart?',
    answers: {
      'A. =': true,
      'B. ==': false,
      'C. :=': false,
      'D. =>': false,
    },
  ),
  QuestionModel(
    question: '6. ¿Qué tipo de programación fomenta Dart?',
    answers: {
      'A. Programación estructurada.': false,
      'B. Programación orientada a objetos.': true,
      'C. Programación funcional.': false,
      'D. Programación procedural.': false,
    },
  ),
  QuestionModel(
    question: '7. ¿Cuál es el tipo de variable que puede contener un valor nulo en Dart?',
    answers: {
      'A. int': false,
      'B. String': false,
      'C. dynamic': true,
      'D. bool': false,
    },
  ),
  QuestionModel(
    question: '8. ¿Cuál es la forma correcta de comentar una línea en Dart?',
    answers: {
      'A. // Comentario': true,
      'B. /* Comentario */': false,
      'C. -- Comentario': false,
      'D. # Comentario': false,
    },
  ),
  QuestionModel(
    question: '9. ¿Qué método se llama automáticamente cuando se crea una nueva instancia de una clase en Dart?',
    answers: {
      'A. init()': false,
      'B. create()': false,
      'C. constructor()': true,
      'D. new()': false,
    },
  ),
  QuestionModel(
    question: '10. ¿Cuál es la palabra clave utilizada para la creación de una nueva instancia de una clase en Dart?',
    answers: {
      'A. new': true,
      'B. create': false,
      'C. instance': false,
      'D. make': false,
    },
  ),
];
