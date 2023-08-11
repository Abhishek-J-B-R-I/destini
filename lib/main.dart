import 'package:flutter/material.dart';

void main() {
  runApp(game());
}

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(

        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/background.png'),fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(
                child: Expanded(
                  child: Container(
                    //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/background.png'),fit: BoxFit.cover)),
                    padding: EdgeInsets.all(20),
                    height: height/1.7,
                    width: width,
                    child: Text('Story', style: TextStyle(
                      color: Colors.white
                    ),),

                    //color: Colors.deepPurpleAccent,

                  ),
                ),
              ),
              SizedBox(
                height:height/50,
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  print('i am option 1');
                },
                child: Text('Option 1',style: TextStyle(
                  color: Colors.white
                ),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              )),
              SizedBox(
                height:height/50,
              ),
              Expanded(
                  child: TextButton(

                      onPressed: () {
                        print('i am option2');
                      },
                      child: Text('Option 2', style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade400),

                  ),

                  )),
              SizedBox(
                height: height/60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
