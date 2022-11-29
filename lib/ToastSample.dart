import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastSample extends StatefulWidget {
  @override
  _ToastExampleState createState() {
    return _ToastExampleState();
  }
}

class _ToastExampleState extends State {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'Toast sample. Enganind.. ishtaya.. ishtaya..',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color(0x85000000),
        textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Tutorial',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Toast Tutorial'),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: ElevatedButton(
                child: Text('Press to show'),
                onPressed: showToast,
              ),
            ),
          )
      ),
    );
  }
}
