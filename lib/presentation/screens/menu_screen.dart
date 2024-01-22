import 'package:proyecto_m6/config/barrel_config.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Cadenas.menuText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            //boton de tipo raised
            GestureDetector(
              child: Image.asset(Cadenas.dartLogo, height: 80, width: 80),
              onTap: () {
                context.push(Cadenas.dartRoute);
              },
            ),
            const SizedBox(height: 10),
            //boton de tipo raised
            GestureDetector(
              child: Image.asset(Cadenas.csharpLogo, height: 80, width: 80),
              onTap: () {
                context.push(Cadenas.csharpRoute);
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: Image.asset(Cadenas.javaLogo, height: 100, width: 100),
              onTap: () {
                context.push(Cadenas.javaRoute);
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: Image.asset(Cadenas.pythonLogo, height: 80, width: 80),
              onTap: () {
                context.push(Cadenas.pythonRoute);
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: Image.asset(Cadenas.phpLogo, height: 100, width: 100),
              onTap: () {
                context.push(Cadenas.phpRoute);
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: Image.asset(Cadenas.javascriptLogo, height: 80, width: 80),
              onTap: () {
                context.push(Cadenas.javascriptRoute);
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: FilledButton(
                  onPressed: () {
                    //cerrar la app
                    context.push('/theme-changer');
                  },
                  child: Text(Cadenas.changeTheme)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: FilledButton(
                  onPressed: () {
                    //cerrar la app
                    SystemNavigator.pop();
                  },
                  child: Text(Cadenas.closeApp)),
            ),
          ],
        ),
      ),
    );
  }
}
