import 'package:flutter/material.dart';
import 'package:tesla_model/Screens/home_page.dart';
import 'package:tesla_model/Screens/loading.dart';

import 'Widgets/loading_widget.dart';

late final Loading loadingShader;
Future<void> main() async {
  loadingShader = await Loading.compile();
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fancy Loading',
        theme: ThemeData.light(),
        home: const Tesla()),
  );
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: SizedBox.square(
                dimension: 300,
                child: ShaderSpinner(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
            ),
          ],
        ));
  }
}
