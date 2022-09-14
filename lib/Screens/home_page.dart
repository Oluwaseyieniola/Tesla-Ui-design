import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_model/Screens/navigation.dart';
import 'package:tesla_model/Screens/questions.dart';

class Tesla extends StatelessWidget {
  static const routeName = '/Tesla';
  const Tesla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Your Car\n is ready to Go',
                    style:
                        GoogleFonts.oswald(fontSize: 30, color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 160,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 31, 25, 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Tesla model S',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomPaint(
                  foregroundPainter: CustomFadingEffectPainer(),
                  child: Image.asset('assets/images/tesla.jpg')),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 85,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Kulosa()));
                        },
                        child: const Icon(Icons.navigation)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: 85,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 66, 63, 63),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Questions()));
                        },
                        child: const Icon(Icons.question_answer)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: 85,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 66, 63, 63),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                        onPressed: () {},
                        child: const Icon(Icons.charging_station)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 300,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 34, 52, 211),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            )),
                        onPressed: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 16, 16, 17),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      )),
                                  onPressed: () {},
                                  child: const Icon(Icons.flash_auto)),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
