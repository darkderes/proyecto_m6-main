import 'package:proyecto_m6/models/question_model.dart';

List<QuestionModel> questionsJavaScript = [
  QuestionModel(
    question: '1 ¿Cómo se declara un objeto en JavaScript?',
    answers: {
      'A. var obj = {}': true,
      'B. let obj = new Object()': false,
      'C. const obj = new Object()': false,
      'D. object obj = {}': false,
    },
  ),
  QuestionModel(
    question: '2. ¿Cuál es la palabra clave utilizada para la declaración de una variable en JavaScript?',
    answers: {
      'A. var': true,
      'B. let': true,
      'C. const': true,
      'D. variable': false,
    },
  ),
  QuestionModel(
    question: '3. ¿Cómo se declara una función en JavaScript?',
    answers: {
      'A. function myFunction() {}': true,
      'B. func myFunction() {}': false,
      'C. void myFunction() {}': false,
      'D. def myFunction() {}': false,
    },
  ),
    QuestionModel(
    question: '4. ¿Cuál es el operador de concatenación de cadenas en JavaScript?',
    answers: {
      'A. +': true,
      'B. .': false,
      'C. ,': false,
      'D. &': false,
    },
  ),
  QuestionModel(
    question: '5. ¿Cuál es el operador de igualdad estricta en JavaScript?',
    answers: {
      'A. =': false,
      'B. ==': false,
      'C. ===': true,
      'D. !==': true,
    },
  ),
  QuestionModel(
    question: '6. ¿Qué tipo de lenguaje es JavaScript?',
    answers: {
      'A. Lenguaje compilado.': false,
      'B. Lenguaje interpretado.': true,
      'C. Lenguaje ensamblador.': false,
      'D. Lenguaje de bajo nivel.': false,
    },
  ),
  QuestionModel(
    question: '7. ¿Cuál es la forma correcta de comentar varias líneas en JavaScript?',
    answers: {
      'A. // Comentario': false,
      'B. /* Comentario */': true,
      'C. -- Comentario': false,
      'D. # Comentario': false,
    },
  ),
  QuestionModel(
    question: '8. ¿Cuál es el método para obtener la longitud de un array en JavaScript?',
    answers: {
      'A. arr.length': true,
      'B. arr.size()': false,
      'C. lengthOf(arr)': false,
      'D. count(arr)': false,
    },
  ),
  QuestionModel(
    question: '9. ¿Qué método se utiliza para imprimir en la consola en JavaScript?',
    answers: {
      'A. console.log()': true,
      'B. print()': false,
      'C. log()': false,
      'D. write()': false,
    },
  ),
  QuestionModel(
    question: '10. ¿Cuál es la palabra clave utilizada para declarar una constante en JavaScript?',
    answers: {
      'A. var': false,
      'B. let': false,
      'C. const': true,
      'D. final': false,
    },
  ),
];
