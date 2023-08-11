import 'package:flutter/material.dart';


void main(){
  runApp(
    game()
  );
}

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Text('Story'),
                color: Colors.deepPurpleAccent,

              ),

            ),Expanded(child: FilledButton(
              onPressed: (){
                print('i am option 1');
              },
              child: Text('Option 1'),
            )),

            Expanded(child: FilledButton(onPressed: (){print('i am option2');}, child: Text('Option 2')))
          ],
        ),
      ),
    );
  }
}
