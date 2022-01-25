import 'package:bachelorsimulator/screens/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/quizz_screen_IT.dart';
import 'package:bachelorsimulator/screens/quizz_screen_PM.dart';
import 'package:bachelorsimulator/screens/quizz_screen_BWL.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';

class QuizzCategories extends StatefulWidget {
  const QuizzCategories({Key? key}) : super(key: key);

  @override
  _QuizzCategoriesState createState() => _QuizzCategoriesState();
}

class _QuizzCategoriesState extends State<QuizzCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz Kategorien'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 28.0,
          horizontal: 12.0,
        ),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(80),
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(20),
                  side: BorderSide(
                      width: 1, color: Colors.white), //border width and color
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20)), //elevation of button
                ),
                child: Text('Informationstechnologie'),
                onPressed: () {
                  //Navigating to IT quizz
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreenIT(),
                      ));
                }),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(80),
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(20),
                  side: BorderSide(
                      width: 1, color: Colors.white), //border width and color
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20)), //elevation of button
                ),
                child: Text('Projektmanagement'),
                onPressed: () {
                  //Navigating to PM quizz
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreenPM(),
                      ));
                }),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(80),
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(20),
                  side: BorderSide(
                      width: 1, color: Colors.white), //border width and color
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20)), //elevation of button
                ),
                child: Text('BWL'),
                onPressed: () {
                  //Navigating to PM quizz
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreenBWL(),
                      ));
                }),
            SizedBox(height: 80),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(30),
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(20),
                  side: BorderSide(
                      width: 1, color: Colors.white), //border width and color
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20)), //elevation of button
                ),
                child: Text('Zurück zum Hauptmenü'),
                onPressed: () {
                  //Navigating to PM quizz
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainMenu(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
