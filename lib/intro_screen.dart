import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: SizedBox(
          height: 300,
          width: 300,
          child: Image.asset(
            'images/intro1.png',
            fit: BoxFit.contain,
          ),
        ),
        title: 'Learn coding consistently with ....',
        body: 'If you are stuck anywhere, you can also get help with ChatGPT.',
        footer: Align(
          alignment: Alignment.center,
          child: Text('© Afaque Ahmed'),
        ),
      ),
      PageViewModel(
        image: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(
              'images/intro2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: 'Learn coding consistently with ....',
        body: 'If you are stuck anywhere, you can also get help with ChatGPT.',
        footer: Align(
          alignment: Alignment.center,
          child: Text('© Afaque Ahmed'),
        ),
      ),
      PageViewModel(
        image: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(
              'images/intro3.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: 'Learn coding consistently with ....',
        body: 'If you are stuck anywhere, you can also get help with ChatGPT.',
        footer: Align(
          alignment: Alignment.center,
          child: Text('© Afaque Ahmed'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text(
          "Done",
          style: TextStyle(color: Colors.amber),
        ),
        onDone: () {
          // Handle what happens when the user taps the "Done" button
        },
        next: Text(
          "Next",
          style: TextStyle(color: Colors.amber),
        ),
        showNextButton: true,
        pages: getPages(),
      ),
    );
  }
}
