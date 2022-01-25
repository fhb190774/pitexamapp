import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/main_menu.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';
import 'package:bachelorsimulator/data/questions_bwl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultScreenBWL extends StatefulWidget {
  int score;
  ResultScreenBWL(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenBWLState createState() => _ResultScreenBWLState();
}

class _ResultScreenBWLState extends State<ResultScreenBWL> {
  @override
  Widget build(BuildContext context) {
    print(widget.score);
    double scoreDouble = widget.score.toDouble();
    double percent = scoreDouble / questionsBWL.length * 100;
    String percentstring = percent.toStringAsFixed(2);
    print(percentstring);
    String posneg = '';
    bool positive = false;

    if (percent > 50) {
      posneg = 'Positiv!';
      positive = true;
    } else {
      posneg = 'Negativ!';
      positive = false;
    }
    ;

    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Ergebnis",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Von ${questionsBWL.length}",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 45.0,
          ),
          if (positive)
            Text(
              "$posneg $percentstring%",
              style: TextStyle(color: AppColor.positive, fontSize: 34.0),
            )
          else
            Text(
              "$posneg $percentstring%",
              style: TextStyle(color: AppColor.negative, fontSize: 34.0),
            ),
          SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              _save();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ));
            },
            shape: StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Zurück zum Hauptmenü",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key_bwl';
    final value = widget.score;
    prefs.setInt(key, value);
    print('saved $value');
  }
}
