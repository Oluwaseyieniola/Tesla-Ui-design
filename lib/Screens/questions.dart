import 'package:flutter/material.dart';
import 'package:tesla_model/Widgets/loading_widget.dart';

class Questions extends StatefulWidget {
  static const routeName = '/Questions';
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 80,
              width: 85,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 23, 39, 73),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 50, right: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Ask a Question',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color>[
                      Color.fromARGB(255, 222, 231, 239),
                      Color.fromARGB(255, 12, 78, 191)
                    ],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                child: const Text(
                  'The\n condition\n of my car',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const Icon(
              Icons.record_voice_over,
              color: Colors.white,
              size: 40,
            ),
            const ShaderSpinner()
          ],
        ),
      ]),
    );
  }
}

class CustomFadingEffectPainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect =
        Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));
    Paint paint = Paint()
      ..shader = const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.center,
          colors: [
            Color.fromARGB(255, 47, 123, 244),
            Color.fromARGB(0, 100, 167, 255)
          ]).createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomFadingEffectPainer oldDelegate) => false;
}

class MyPainter extends CustomPainter {
  //         <-- CustomPainter class
  @override
  void paint(Canvas canvas, Size size) {
    const center = Offset(120, 150);
    const radius = 300 / 2;
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
