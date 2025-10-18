import 'package:flutter/material.dart';

class AnimetedTest extends StatefulWidget {
  const AnimetedTest({super.key});

  @override
  State<AnimetedTest> createState() => _AnimetedTestState();
}

class _AnimetedTestState extends State<AnimetedTest> {
  // double _size = 200;
  // Color _color = Colors.blue;
  bool _isleft = true;
  void toggleAlign() {
    setState(() {
      _isleft = !_isleft;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animeted Test'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(seconds: 1),
            alignment: _isleft ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: toggleAlign,
                child: const Text('Animate Align'),
              ),
            ),
        ],
      )












    //   Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         AnimatedContainer(
    //           duration: const Duration(seconds: 2),
    //           width: _size,
    //           height: _size,
    //           color: _color,
    //           child: const Center(
    //             child: Text(
    //               'Animated Container',
    //               style: TextStyle(color: Colors.white, fontSize: 18),
    //             ),
    //           ),
    //         ),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //           onPressed: () {
    //             setState(() {
    //               _size = _size == 200 ? 300 : 200;
    //               _color = _color == Colors.blue ? Colors.red : Colors.blue;
    //             });
    //           },
    //           child: const Text('Animate'),
    //         ),
    //       ],
    //     )
    //   ),
   );
  }
}