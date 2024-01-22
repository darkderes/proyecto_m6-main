import 'package:proyecto_m6/config/barrel_config.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MenuScreen(),
  ),
  GoRoute(
      path: '/details/:name/:path/:text',
      builder: (context, state) {
        final name = state.pathParameters['name'];
        final path = state.pathParameters['path'];
        final text = state.pathParameters['text'];

        final assetPath = mapAssetIdToPath(path ?? '');
        final assetText = mapAssetText(text ?? '');

        return LenguageScreens(
          name: name ?? 'Dart',
          path: assetPath,
          text: assetText,
        );
      }),
  GoRoute(
      path: '/quiz/:questions/:name',
      builder: (context, state) {
        final questions = state.pathParameters['questions'];
        final name = state.pathParameters['name'];
        final list = mapList(questions ?? '');
        return QuizzScreen(questions: list, lenguage: name ?? '');
      }),
  GoRoute(
    path: '/theme-changer',
    builder: (context, state) => const ThemeChangerScreen(),
  ),
]);
String mapAssetIdToPath(String assetId) {
  switch (assetId) {
    case 'dartLogo':
      return Cadenas.dartLogo;
    case 'csharpLogo':
      return Cadenas.csharpLogo;
    case 'javaLogo':
      return Cadenas.javaLogo;
    case 'pythonLogo':
      return Cadenas.pythonLogo;
    case 'phpLogo':
      return Cadenas.phpLogo;
    case 'javascriptLogo':
      return Cadenas.javascriptLogo;
    // Agrega más casos según sea necesario
    default:
      return '';
  }
}

String mapAssetText(String assetId) {
  switch (assetId) {
    case 'dartText':
      return Cadenas.dartText;
    case 'csharpText':
      return Cadenas.csharpText;
    case 'javaText':
      return Cadenas.javaText;
    case 'pythonText':
      return Cadenas.pythonText;
    case 'phpText':
      return Cadenas.phpText;
    case 'javascriptText':
      return Cadenas.javascriptText;
    // Agrega más casos según sea necesario
    default:
      return '';
  }
}

List<QuestionModel> mapList(String assetId) {
  switch (assetId) {
    case 'Dart':
      return questionsDart;
    case 'Csharp':
      return questionsCsharp;
    case 'Python':
      return questionsPython;
    case 'PHP':
      return questionsPHP;
    case 'Javascript':
      return questionsJavaScript;
    case 'Java':
      return questionsJava;

    default:
      return [];
  }
}
