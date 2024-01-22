

import 'package:proyecto_m6/models/question_model.dart';

List<QuestionModel> questionsCsharp = [
  QuestionModel(
    question: '1. ¿Qué línea de código usa negación lógica? ',
    answers: {
      'A. Console.WriteLine(!value);.': true,
      'B. Console.WriteLine(value != false);.': false,
      'C. Console.WriteLine(a != b);.': false,
      'D. Error': false,
    },
  ),
  QuestionModel(
    question: '2. ¿Cuál de las siguientes líneas de código constituye un uso válido del operador condicional?',
    answers: {
      'A. int value = amount >= 10? 10: 20;.': true,
      'B. int value = amount >= 10: 10? 20;.': false,
      'C. int value = amount >= 10? 10| 20;.': false,
      'D. int value = amount if 10? 10| 20;.': false,
    },
  ),
  QuestionModel(
    question: '3. ¿Qué instrucción se puede usar para salir del bucle for?',
    answers: {
      'A. break;': true,
      'B. exit;': false,
      'C. else': false,
      'D. return;': false,
    },
  ),
QuestionModel(
    question: '4. ¿Cómo se declara una variable constante en C#?',
    answers: {
      'A. const x = 5;': true,
      'B. final int x = 5;': false,
      'C. var x = const 5;': false,
      'D. define x = 5;': false,
    },

  ),
  QuestionModel(
    question: '5. ¿Cuál de las siguientes opciones declara correctamente un método? ',
    answers: {
      'A. DisplayNumbers();': false,
      'B. void DisplayNumbers{}; .': false,
      'C. void DisplayNumbers() { } .': true,
      'D. DisplayNumbers(' ') void': false,
    },
  ),
  QuestionModel(
    question: '6.¿Cuál de las siguientes opciones llama correctamente a un método? ',
    answers: {
      'A. GenerateID();': true,
      'B. void GenerateID() {}': false,
      'C. GenerateID;': false,
      'D. GenerateID{}': false,
    },
  ),
    QuestionModel(
    question: '7. ¿Cuál es el nombre de la clase base de la que heredan todos los tipos de excepción derivados?  ',
    answers: {
      'A. Oposición.': false,
      'B. System.': false,
      'C. Excepción.': true,
      'D. Parse': false,
    },
  ),
   QuestionModel(
    question: '8.¿Qué propiedad de un objeto de excepción se puede usar para determinar dónde se produjo un error? ',
    answers: {
      'A. InnerException.': false,
      'B. StackTrace.': true,
      'C. TargetSite.': false,
      'D. catch': false,
    },
  ),
   QuestionModel(
    question: '9.¿Cuál es el nombre del tipo de excepción específico que se produce al intentar dividir por cero en C#? ',
    answers: {
      'A. ArithmeticException.': false,
      'B. InvalidCastException.': false,
      'C. DivideByZeroException.': true,
      'D. ErrorByZeroException.': false,
    },
  ),
     QuestionModel(
    question: '10. ¿Qué sección de la vista EJECUTAR Y DEPURAR se usa para realizar un seguimiento del punto de ejecución actual dentro de la aplicación en ejecución ?',
    answers: {
      'A. Sección VARIABLES.': false,
      'B. Sección FUCTION.': false,  
      'C. Sección WATCH.': false,
      'D. Sección CALL STACK': true,
    },
  ),
];