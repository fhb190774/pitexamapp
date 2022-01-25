import 'package:bachelorsimulator/screens/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/quizz_screen_IT.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';
import 'package:bachelorsimulator/screens/quizz_categories.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Über das Projekt'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      'Der Bachelorprüfungssimulator wurde von Studierenden im Rahmen der Lehrveranstaltung "Webentwicklung" im 5. IT-Fachsemeter konzipiert und im Anschluss implementiert.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ))),

            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      'Die Initiative dient den Studierenden als Lernhilfe in der Vorbereitung auf die Bachelorprüfung des Studiengangs "Projektmanagement und IT".',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ))),

              Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      'Wir haben uns zum Ziel gesetzt, dass jeder & jede sich mit den gesammelten Fragen optimal auf die Themengebieten IT und Projektmanagement vorbeiten kann.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ))),
                
                Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      'Die Fragen werden weiterhin durch uns verwaltet. Für neue Fragen, Anpassungen, oder eine allgemeine Nachricht, verwende bitte unser Feedback Formular.',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.center,
                    ))),
            
                      new Image.asset('images/team.jpeg'),

          ],
        ),
      ),
    );
  }
}
