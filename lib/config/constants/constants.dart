class Cadenas {
  /// Textos de los lenguajes de programación
  static String dartText =
      'Dart es un lenguaje de programación de código abierto, desarrollado por Google. Es una alternativa a JavaScript, que se ejecuta en el lado del cliente, o a Java, que se ejecuta en el lado del servidor.';
  static String csharpText =
      'C# es un lenguaje de programación orientado a objetos desarrollado y estandarizado por Microsoft como parte de su plataforma .NET, que después fue aprobado como un estándar por la ECMA (ECMA-334) e ISO (ISO/IEC 23270). C# es uno de los lenguajes de programación diseñados para la infraestructura de lenguaje común. Su sintaxis básica deriva de C/C++ y utiliza el modelo de objetos de la plataforma .NET, similar al de Java, aunque incluye mejoras derivadas de otros lenguajes.';
  static String javaText =
      'Java es un lenguaje de programación de propósito general, concurrente, orientado a objetos, que fue diseñado específicamente para tener tan pocas dependencias de implementación como fuera posible. Su intención es permitir que los desarrolladores de aplicaciones escriban el programa una vez y lo ejecuten en cualquier dispositivo (conocido en inglés como WORA, o "write once, run anywhere"), lo que quiere decir que el código que es ejecutado en una plataforma no tiene que ser recompilado para correr en otra. Java es, a partir de 2012, uno de los lenguajes de programación más populares en uso, particularmente para aplicaciones de cliente-servidor de web, con unos 10 millones de usuarios reportados.';
  static String pythonText =
      'Python es un lenguaje de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código.​ Se trata de un lenguaje de programación multiparadigma, ya que soporta parcialmente la orientación a objetos, programación imperativa y, en menor medida, programación funcional. Es un lenguaje interpretado, usa tipado dinámico y es multiplataforma.';
  static String phpText =
      'PHP es un lenguaje de programación de uso general de código del lado del servidor originalmente diseñado para el desarrollo web de contenido dinámico. Fue uno de los primeros lenguajes de programación del lado del servidor que se podían incorporar directamente en un documento HTML en lugar de llamar a un archivo externo que procese los datos. El código es interpretado por un servidor web con un módulo de procesador de PHP que genera el HTML resultante.';
  static String javascriptText =
      'JavaScript es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos,3​ basado en prototipos, imperativo, débilmente tipado y dinámico.';

  /// url de logos de los lenguajes de programación
  static String dartLogo = 'assets/logos/dart.png';
  static String csharpLogo = 'assets/logos/csharp.png';
  static String javaLogo = 'assets/logos/java.png';
  static String pythonLogo = 'assets/logos/python.png';
  static String phpLogo = 'assets/logos/php.png';
  static String javascriptLogo = 'assets/logos/javascript.png';

  // textos estaticos de pantalla MenuScreen
  static String menuText = 'Elija lenguaje de programación:';
  static String changeTheme = 'Cambiar tema';
  static String closeApp = 'Cerrar aplicación';

  // texto de rutas ocupadas en detalles de la app desde MenuScreen
  static String dartRoute = '/details/Dart/dartLogo/dartText';
  static String csharpRoute = '/details/Csharp/csharpLogo/csharpText';
  static String javaRoute = '/details/Java/javaLogo/javaText';
  static String pythonRoute = '/details/Python/pythonLogo/pythonText';
  static String phpRoute = '/details/PHP/phpLogo/phpText';
  static String javascriptRoute =
      '/details/Javascript/javascriptLogo/javascriptText';

  // texto estaticos de pantalla lenguajeScreen
  static String startText = 'Comenzar test';
  static String routeSoundsStart = 'sounds/start.mp3';

  // texto estaticos de pantalla quizzeScreen
  static String nextText = 'Siguiente';
  static String viewResults = 'Ver resultados';
  static String routeSoundsCorrect = 'sounds/correct.mp3';
  static String routeSoundsIncorrect = 'sounds/incorrect.mp3';

  // texto estaticos de pantalla resultScreen
  static String congratulationText = 'Felicidades';
  static String tryAgainText = 'Vuelva a intentarlo';
  static String routeJsonSuccess = 'assets/json/success.json';
  static String routeJsonError = 'assets/json/error.json';
  static String textScore = 'You Score is';
  static String textStadistic = 'Estadisticas';
  static String backToMenu = 'Volver al menu';

}
