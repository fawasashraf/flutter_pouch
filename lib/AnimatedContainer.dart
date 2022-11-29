import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerClass extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerClass> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 100;
  double _height = 100;
  bool _tap = false;
  Color _color = const Color(0xFF1D3326);
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(100);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1D3326),
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new GestureDetector(
                onTap: () {
                  setState(() {
                    if (!_tap) {
                      // Generate a random width and height.
                      _width = 100;
                      _height = 200;

                      // Generate a random border radius.
                      _borderRadius = BorderRadius.circular(80);
                      _tap = true;
                    } else {
                      _width = 100;
                      _height = 100;
                      _borderRadius = BorderRadius.circular(100);
                      _tap = false;
                    }
                  });
                },
                child: AnimatedContainer(
                  // Use the properties stored in the State class.
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: _borderRadius,
                  ),
                  // Define how long the animation should take.
                  duration: Duration(seconds: 1),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.play_arrow),
        //   // When the user taps the button
        //   onPressed: () {
        //     // Use setState to rebuild the widget with new values.
        //     setState(() {
        //       // Create a random number generator.
        //       final random = Random();
        //
        //       // Generate a random width and height.
        //       _width = random.nextInt(300).toDouble();
        //       _height = random.nextInt(300).toDouble();
        //
        //       // Generate a random color.
        //       _color = Color.fromRGBO(
        //         random.nextInt(256),
        //         random.nextInt(256),
        //         random.nextInt(256),
        //         1,
        //       );
        //
        //       // Generate a random border radius.
        //       _borderRadius =
        //           BorderRadius.circular(random.nextInt(100).toDouble());
        //     });
        //   },
        // ),
      ),
    );
  }
}
