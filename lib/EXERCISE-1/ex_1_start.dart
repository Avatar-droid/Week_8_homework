import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

List<Widget> getColor(){
  return colors.map((item) => Text(item)).toList();
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),
              // TODO
              Text('Start', 
              style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold )),
              for( int i = 0; i < 3; i++) 
                Text(colors[i]),
              Text('Start', 
              style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold )),
              
              Label("Method 2: Map", bold: true),
              // TODO
              Text('Start', 
              style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold )),
              ...colors.map((item) => Text(item)).toList(),
              Text('End', 
              style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold )),
              Label("Method 23: Dedicated Function", bold: true),
              // TODO
              Text('Start', 
              style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold )),
              ...getColor(),
              Text('End',
              style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold )),
              
            ],
          ),
        ),
      ),
    ),
  );
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
