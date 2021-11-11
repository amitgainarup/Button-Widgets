import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Subarna());

class Subarna extends StatefulWidget {
  @override
  _SubarnaState createState() => _SubarnaState();
}

class _SubarnaState extends State<Subarna> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('All New Buttons'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.red,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Outline Button'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.black,
                        width: 4,
                        style: BorderStyle.solid,
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Outline button 2'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.cyan,
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Elevated Button'),
                  ),
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.yellow,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () => print('Amit Gain'),
                    child: Text('ElevatedButton-2'),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('TextButton'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
