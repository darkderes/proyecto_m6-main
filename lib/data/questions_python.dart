

import 'package:proyecto_m6/models/question_model.dart';

List<QuestionModel> questionsPython = [
  QuestionModel(
    question: '1. Para mostrar una cadena en la consola, ¿qué código escribiría? ',
    answers: {
      'A. El código print(my message)': false,
      'B. El código println("my message")': false,
      'C. El código print("my message")': true,
      'D. Error': false,
    },
  ),
  QuestionModel(
    question: '2. ¿Qué ocurrirá si ejecuta la instrucción "1" + 2?',
    answers: {
      'A. Se evaluará como 3.': false,
      'B. Se convertirá en "12".': false,
      'C. Se convertira 33': false,
      'D. Se producirá un error': true,
    },
  ),
  QuestionModel(
    question: '3. ¿De qué es abreviatura la palabra clave elif en Python?',
    answers: {
      'A. else if': true,
      'B. only if': false,
      'C. else': false,
      'D. if': false,
    },
  ),
  QuestionModel(
    question: '4. ¿Qué valores de una expresión de prueba siempre se interpretan como false? ',
    answers: {
      'A. Los valores distintos de cero': false,
      'B. Empty': false,
      'C. None y 0': true,
      'D. Error': false,
    },
  ),
  QuestionModel(
    question: '5. ¿Cuál es la llamada de método de cadena que se usa para dividir las cadenas en líneas independientes?',
    answers: {
      'A. El método .separate(' ') .': false,
      'B. El método .newlines() .': false,
      'C. El método .split(' ') .': true,
      'D. El método .Divide(' ')': false,
    },
  ),
  QuestionModel(
    question: '6. ¿Qué dos métodos de cadena se pueden usar para comprobar si existe una palabra en una cadena? ',
    answers: {
      'A. Los métodos .find() y .count()': true,
      'B. Los métodos .search() y .count().': false,
      'C. Los métodos .check() y .search()': false,
      'D. Error': false,
    },
  ),
    QuestionModel(
    question: '7. ¿Qué función se usa para convertir una cadena en un entero? ',
    answers: {
      'A. int': true,
      'B. float': false,
      'C. input': false,
      'D. Parse.int': false,
    },
  ),
   QuestionModel(
    question: '8. ¿Qué función se usa para determinar un valor absoluto? ',
    answers: {
      'A. round': false,
      'B. floor': false,
      'C. abs': true,
      'D. math': false,
    },
  ),
   QuestionModel(
    question: '9. ¿Qué operador se usa para determinar un operador módulo?',
    answers: {
      'A. *': false,
      'B. +': false,
      'C. %': true,
      'D. &': false,
    },
  ),
     QuestionModel(
    question: '10. ¿Cuál es la sintaxis correcta para detectar dos excepciones en la misma línea except?',
    answers: {
      'A. raise (ValueError, TypeError)': false,
      'B. except ValueError, TypeError:': false,
      'C. except (ValueError, TypeError):': true,
      'D. try() catch()': false,
    },
  ),
];