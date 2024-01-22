import 'package:proyecto_m6/config/barrel_config.dart';
import 'package:proyecto_m6/presentation/screens/result_screen.dart';


class QuizzScreen extends StatefulWidget {
  final List<QuestionModel> questions;
  final String lenguage;

  const QuizzScreen({Key? key, required this.questions, required this.lenguage})
      : super(key: key);

  @override
  QuizzScreenState createState() => QuizzScreenState();
}

class QuizzScreenState extends State<QuizzScreen> {
  int score = 0;
  bool btnPressed = false, answered = false;
  PageController? _controller;
  String btnText = Cadenas.nextText;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == widget.questions.length - 1) {
                setState(() {
                  btnText = Cadenas.viewResults;
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: LinearProgressIndicator(
                        value: (index + 1) / widget.questions.length,
                        backgroundColor: Colors.grey,
                        minHeight: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "pregunta ${index + 1}/10",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        //color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const Divider(
                      // color: Colors.black,
                      ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 200.0,
                    child: Text(
                      "${widget.questions[index].question}",
                      style: const TextStyle(
                        // color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  for (int i = 0;
                      i < widget.questions[index].answers!.length;
                      i++)
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: const EdgeInsets.only(
                          bottom: 20.0, left: 12.0, right: 12.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: btnPressed
                            ? widget.questions[index].answers!.values
                                    .toList()[i]
                                ? const Color.fromARGB(255, 36, 85, 38)
                                : const Color.fromARGB(255, 146, 34, 26)
                            : Theme.of(context).primaryColor,
                        onPressed: !answered
                            ? () {
                                if (widget.questions[index].answers!.values
                                    .toList()[i]) {
                                  score++;
                                  player.stop();
                                  player.setReleaseMode(ReleaseMode.release);
                                  player.play(
                                      AssetSource(Cadenas.routeSoundsCorrect));
                                  debugPrint("yes");
                                } else {
                                  player.stop();
                                  player.setReleaseMode(ReleaseMode.release);
                                  player.play(AssetSource(
                                      Cadenas.routeSoundsIncorrect));
                                  debugPrint("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Text(
                            widget.questions[index].answers!.keys.toList()[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            )),
                      ),
                    ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() ==
                          widget.questions.length - 1) {
                        saveScore(widget.lenguage, score);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(score)));
                      } else {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    child: Text(
                      btnText,
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: widget.questions.length,
          )),
    );
  }
}
