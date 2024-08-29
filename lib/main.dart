import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: false),
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter A Examples'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: OpenContainer(
              openColor: Colors.blue.shade300,
              transitionDuration: const Duration(seconds: 1),
              transitionType: ContainerTransitionType.fadeThrough,
              closedBuilder: (context, action) {
                return Container(
                    color: Colors.white,
                    width: 250,
                    height: 300,
                    child: Center(
                        child: Image.asset('assets/images/flutter_bird.png')));
              },
              openBuilder: (context, action) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                  ),
                  body: Column(
                    children: [Image.asset('assets/images/flutter_bird.png')],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
