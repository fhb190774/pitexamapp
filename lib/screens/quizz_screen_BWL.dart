import 'package:flutter/material.dart';
import 'package:bachelorsimulator/data/questions_bwl.dart';
import 'package:bachelorsimulator/screens/result_screenBWL.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';
import 'package:bachelorsimulator/widgets/quizz_widget.dart';
import 'package:bachelorsimulator/model/question_model.dart';
import 'package:bachelorsimulator/screens/quizz_categories.dart';

class QuizzScreenBWL extends StatefulWidget {
  const QuizzScreenBWL({Key? key}) : super(key: key);

  @override
  _QuizzScreenBWLState createState() => _QuizzScreenBWLState();
}

class _QuizzScreenBWLState extends State<QuizzScreenBWL> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Nächste Frage";
  bool answered = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questionsBWL.length - 1) {
                setState(() {
                  btnText = "Zum Ergebnis";
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: new NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/ ${questionsBWL.length}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 130.0,
                    child: Text(
                      "${questionsBWL[index].question}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  for (int i = 0; i < questionsBWL[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height: 70.0,
                      margin: EdgeInsets.only(
                          bottom: 20.0, left: 12.0, right: 12.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: btnPressed
                            ? questionsBWL[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : AppColor.secondaryColor,
                        onPressed: !answered
                            ? () {
                                if (questionsBWL[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child:
                            Text(questionsBWL[index].answers!.keys.toList()[i],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                )),
                      ),
                    ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() ==
                          questionsBWL.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreenBWL(score)));
                      } else {
                        _controller!.nextPage(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: StadiumBorder(),
                    fillColor: Colors.blue,
                    padding: EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                      child: RawMaterialButton(
                        onPressed: () {
                          //Navigating to IT quizz
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizzCategories(),
                              ));
                        },
                        shape: const StadiumBorder(),
                        fillColor: AppColor.secondaryColor,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 24.0),
                          child: Text(
                            "Zurück zur Übersicht",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                ],
              );
            },
            itemCount: questionsBWL.length,
          )),
    );
  }
}
