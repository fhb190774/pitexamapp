import 'package:bachelorsimulator/screens/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/quizz_screen_IT.dart';
import 'package:bachelorsimulator/screens/about_screen.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';
import 'package:bachelorsimulator/screens/quizz_categories.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bachelorsimulator/data/questions_it.dart';
import 'package:bachelorsimulator/data/questions_pm.dart';
import 'package:bachelorsimulator/data/questions_bwl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int lastscore = 0;
  int lastscorepm = 0;
  int lastscorebwl = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: AppColor.pripmaryColor,
        body: Column(children: <Widget>[
          SvgPicture.asset('images/logo.svg'),
          Center(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Text('Liebe Studierende!',
                      style: TextStyle(fontSize: 22, color: Colors.white)))),
          Center(
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                  child: Text(
                    'Herzlich Willkommen beim ersten online Bachelorprüfungssimulator für den Studiengang Projektmanagement und IT der Fachhoschule des BFI Wien.',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          Center(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'Du kannst ohne Registirerung direkt mit dem Quiz starten!',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          SizedBox(
            height: 80, //height of button
            width: 300, //width of button
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(20),
                  side: BorderSide(
                      width: 1, color: Colors.white), //border width and color
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20)), //elevation of button
                ),
                child: Text('Ergebnisse'),
                onPressed: () {
                  _read(lastscore, lastscorepm, lastscorebwl);
                }),
          )
        ]));
  }

  _read(lastscore, lastscorepm, lastscorebwl) async {
    final prefs = await SharedPreferences.getInstance();
    final pref2 = await SharedPreferences.getInstance();
    final pref3 = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    final value = prefs.getInt(key) ?? 0;
    final key2 = 'my_int_key_pm';
    final value2 = pref2.getInt(key2) ?? 0;
    final key3 = 'my_int_key_bwl';
    final value3 = pref3.getInt(key3) ?? 0;

    print('read: $value');
    print('read2: $value2');
    print('read3: $value3');
    lastscore = value;
    lastscorepm = value2;
    lastscorebwl = value3;

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            backgroundColor: Color.fromARGB(226, 65, 160, 238),
            //this right here
            child: Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Ergebnisse:",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    SizedBox(height: 30),
                    Text(
                        "IT Score: $lastscore/${questionsIT.length} \nPM Score: $lastscorepm/${questionsPM.length} \nBWL Score: $lastscorebwl/${questionsBWL.length}",
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 320.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(30),
                            textStyle: TextStyle(fontSize: 20),
                            padding: EdgeInsets.all(20),
                            side: BorderSide(
                                width: 1,
                                color: Colors.white), //border width and color
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20)), //elevation of button
                          ),
                          child: Text('Ok'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                ),
              ),
            ),
          );
        });

/*
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Deine letzten Ergebnisse:"),
        backgroundColor: AppColor.pripmaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
        elevation: 10,
        content: Text(
           
            "IT Score: $lastscore/${questionsIT.length} \nPM Score: $lastscorepm/${questionsPM.length} \nBWL Score: $lastscorebwl/${questionsBWL.length}"),
            
      ),
    );
  return; 
  */
  }
}
