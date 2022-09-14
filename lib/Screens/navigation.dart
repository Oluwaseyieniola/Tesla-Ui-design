import 'package:flutter/material.dart';

class Kulosa extends StatefulWidget {
  static const routeName = '/Kulosa';
  const Kulosa({Key? key}) : super(key: key);

  @override
  State<Kulosa> createState() => _KulosaState();
}

class _KulosaState extends State<Kulosa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  width: 85,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 23, 39, 73),
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
              ),
              const Spacer(),
              const Text(
                'Navigation',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  width: 85,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 23, 39, 73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                      onPressed: () {},
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(children: [
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 158, 219, 161),
              child: Icon(
                Icons.info_rounded,
                size: 30,
                color: Color.fromARGB(255, 61, 199, 66),
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.asset(
                'assets/images/route.jpg',
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: 500,
                    child: Card(
                      color: const Color.fromARGB(255, 23, 39, 73),
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: SizedBox(
                              child: Text(
                                'Electric charging',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 90),
                            child: Row(
                              children: const [
                                Icon(Icons.location_on),
                                SizedBox(
                                  child: Text(
                                    'Odessa, 16 Bunin Street',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Row(
                              children: const [
                                SizedBox(
                                  child: Text(
                                    '13',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  child: Text(
                                    'min',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                SizedBox(
                                  child: Text(
                                    '4:43',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  child: Text(
                                    'pm',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                SizedBox(
                                  child: Text(
                                    '2,6',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    'Km',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 190,
                      top: -7,
                      child: SizedBox(
                        height: 46,
                        width: 46,
                        child: TextButton(
                          onPressed: () {},
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 158, 219, 161),
                            child: Icon(
                              Icons.info_rounded,
                              size: 30,
                              color: Color.fromARGB(255, 61, 199, 66),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
