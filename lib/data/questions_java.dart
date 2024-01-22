import 'package:proyecto_m6/models/question_model.dart';

List<QuestionModel> questionsJava = [
   QuestionModel(
    question: '1. ¿Cómo se crea un objeto en Java?',
    answers: {
      'A. new Objeto();': true,
      'B. create Objeto;': false,
      'C. Objeto.nuevo();': false,
      'D. object = Objeto();': false,
    },
  ),
  QuestionModel(
    question: '2. ¿Cuál es la palabra clave utilizada para la declaración de una interfaz en Java?',
    answers: {
      'A. interface': true,
      'B. class': false,
      'C. implements': false,
      'D. extends': false,
    },
  ),
QuestionModel(
    question: '3. ¿Cómo se declara una variable en Java?',
    answers: {
      'A. var x;': false,
      'B. int x;': true,
      'C. float x;': false,
      'D. new Variable();': false,
    },
  ),
    QuestionModel(
    question: '4. ¿Cómo se realiza la captura de excepciones en Java?',
    answers: {
      'A. try-catch.': true,
      'B. handleException();': false,
      'C. onException()': false,
      'D. if (exception) { }': false,
    },
  ),
 QuestionModel(
    question: '5. ¿Para qué se utiliza "System.out.println"?',
    answers: {
      'A. Imprimir en consola.': true,
      'B. Definir una variable.': false,
      'C. Crear una instancia.': false,
      'D. Leer desde consola.': false,
    },
  ),
  QuestionModel(
    question: '6. ¿Java es un lenguaje compilado o interpretado?',
    answers: {
      'A. Compilado.': false,
      'B. Interpretado.': false,
      'C. Ambos.': true,
      'D. Ninguno.': false,
    },
  ),
   QuestionModel(
    question: '7. ¿Cómo se realiza la comparación de cadenas en Java?',
    answers: {
      'A. str1 == str2': false,
      'B. str1.equals(str2)': true,
      'C. str1.compare(str2)': false,
      'D. compare(str1, str2)': false,
    },
  ),
   QuestionModel(
    question: '8. ¿Cuál es el operador de módulo en Java?',
    answers: {
      'A. %': true,
      'B. /%': false,
      'C. mod': false,
      'D. \\': false,
    },
  ),
  QuestionModel(
    question: '9. ¿Cómo se declara un array unidimensional en Java?',
    answers: {
      'A. int array = new int[];': false,
      'B. int[] array = new int();': false,
      'C. int[] array = new int[];': false,
      'D. int[] array = new int[5];': true,
    },
  ),
   QuestionModel(
    question: '25. ¿Qué es JavaFX?',
    answers: {
      'A. Lenguaje de programación.': false,
      'B. Biblioteca para GUI.': true,
      'C. Herramienta de depuración.': false,
      'D. Compilador Java.': false,
    },
  ),
];
