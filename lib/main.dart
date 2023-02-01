import 'package:calculator/buttons/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userQuestion = "";
  var userAnswer = "";
  final textStyle=TextStyle(color: Colors.white,fontSize: 20);

  List<String> text = [
    "7", "8", "9", "X",
    "4","5","6","-",
    "1","2","3","+",
    "Ref","0","=","/",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate_outlined),
        title: Text('Calculator',),
      ),
        backgroundColor: Colors.white,
        body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(userQuestion,style:textStyle)),
                Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(userAnswer,style:textStyle))
              ],
            ),
          )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: GridView.builder(
                    itemCount: text.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (BuildContext cntxt,int index){
                      //7 Button
                      if(index == 0){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion='7';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //8 Button
                      else if(index== 1){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion +='8';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //9 Button
                      else if(index== 2){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion +='9';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //X Button
                      else if(index== 3){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='X';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //4 Button
                      else if(index== 4){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='4';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //5 Button
                      else if(index== 5){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='5';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //6 Button
                      else if(index== 6){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='6';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //- Button
                      else if(index== 7){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='-';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //1 Button
                      else if(index== 8){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='1';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //2 Button
                      else if(index== 9){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion += '2';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //3 Button
                      else if(index== 10){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='3';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //+ Button
                      else if(index== 11){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion+='+';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //Ref Button
                      else if(index== 12){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion='';
                              userAnswer='';
                            });
                          },
                          wholeColor: Colors.green,
                          buttontextColor: Colors.white,
                          buttonText: text[index],
                        );
                      }
                      //0 Button
                      else if(index== 13){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion +="0";
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      //= Button
                      else if(index== 14){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              equalExpressed();
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      // /Button
                      else if(index== 15){
                        return customButton(
                          tapclick: (){
                            setState(() {
                              userQuestion += '/';
                            });
                          },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                      else{
                        return customButton(
                         tapclick: (){
                           setState(() {
                             userQuestion += text[index];
                           });
                         },
                          wholeColor: isOperator(text[index]) ? Colors.blue: Colors.black12,
                          buttontextColor: isOperator(text[index]) ? Colors.white: Colors.blue,
                          buttonText: text[index],
                        );
                      }
                    }),
              ))
    ]),
    );
  }
  bool isOperator(String x){
    if(x=="X"|| x=="-"|| x=="+"|| x=='/' ||x=="="){
      return true;
    }
    return false;
  }
  void equalExpressed(){
    String FinalQuestions= userQuestion;
    FinalQuestions= FinalQuestions.replaceAll('X', '*');

    Parser p = Parser();
    Expression exp = p.parse(FinalQuestions);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer=eval.toString();
  }
}