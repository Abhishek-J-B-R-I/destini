import 'package:flutter/material.dart';
import 'storyquiz.dart';
void main() {
  runApp(game());
}

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  Storyquiz stq= Storyquiz();
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
                    child: Text(stq.GetStory(), style: TextStyle(
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
                flex: 2,
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    if (stq.Storynumber()==0){
                      stq.ChangeStoryNumber(2);

                    }
                    else if(stq.Storynumber()==2){
                      stq.ChangeStoryNumber(5);
                    }
                    else if(stq.Storynumber()==1){
                      stq.ChangeStoryNumber(2);
                    }
                    else if(stq.Storynumber()==5){
                      stq.Resetapp();
                    }
                  });
                  print('i am option 1');

                },
                child: Text(stq.GetChoice1(),style: TextStyle(
                  color: Colors.white
                ),),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              )),
              SizedBox(
                //height:height/6,
                //height: height/50,
                height: height/stq.RedButtonSize(),
              ),
              Visibility(
                visible: stq.visii(),
                child: Expanded(
                  flex: 2,
                    child: TextButton(

                        onPressed: () {
                          print('i am option2');
                          setState(() {
                            if(stq.Storynumber()==0){
                              stq.ChangeStoryNumber(1);
                            }
                            else if(stq.Storynumber()==1){
                              stq.ChangeStoryNumber(3);
                            }

                            //TODO use else if set if story number 4 and 3 then reset
                          });
                        },
                        child: Text(stq.GetChoice2(), style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade400),

                    ),

                    )),
              ),
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
