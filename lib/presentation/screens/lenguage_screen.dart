import 'package:proyecto_m6/config/barrel_config.dart';

class LenguageScreens extends StatelessWidget {
  final String name, path, text;
  final AudioPlayer player = AudioPlayer();

  LenguageScreens(
      {super.key, required this.name, required this.path, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(path, height: 150, width: 150),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 10),
            FilledButton(
                onPressed: () async {
                  await player.stop();
                  player.setReleaseMode(ReleaseMode.release);
                  await player.play(AssetSource(Cadenas.routeSoundsStart));
                  // ignore: use_build_context_synchronously
                  context.push('/quiz/$name/$name');
                },
                child: Text(Cadenas.startText)),
          ],
        ),
      ),
    );
  }
}
