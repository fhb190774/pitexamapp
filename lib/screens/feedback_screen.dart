import 'package:bachelorsimulator/screens/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bachelorsimulator/screens/quizz_screen_IT.dart';
import 'package:bachelorsimulator/screens/about_screen.dart';
import 'package:bachelorsimulator/ui/shared/color.dart';
import 'package:bachelorsimulator/screens/quizz_categories.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColor.pripmaryColor,
      body: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              buildTextField(title: 'Name:', controller: controllerName),
              const SizedBox(height: 12),
              buildTextField(title: 'Email:', controller: controllerEmail),
              const SizedBox(height: 12),
              buildTextField(title: 'Betreff::', controller: controllerSubject),
              const SizedBox(height: 12),
              buildTextField(
                title: 'Nachricht:',
                controller: controllerMessage,
                maxLines: 8,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(30),
                    textStyle: TextStyle(fontSize: 20),
                    padding: EdgeInsets.all(18),
                    side: BorderSide(
                        width: 1, color: Colors.white), //border width and color
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20)), //elevation of button
                  ),
                  child: Text('Senden'),
                  onPressed: () {
                    sendMail(
                      name: controllerName.text,
                      email: controllerEmail.text,
                      subject: controllerSubject.text,
                      message: controllerMessage.text,
                    );
                  }),
            ],
          )),
    );
  }

/*
  Future launchEmail({
    required String toEmail,

    required String subject,
    required String message,
  }) async {
    final url = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
    
    if (await canLaunch(url)) {
      await launch(url);
    }
    
  }*/

  Future sendMail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final serviceId = 'service_3tstdcs';
    final templateId = 'template_af0tufr';
    final userId = 'user_bZLNsd0ljdUXa5ca8sRJd';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http:/localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        }
      }),
    );

    print(response.body);
    controllerName.text = '';
    controllerEmail.text = '';
    controllerSubject.text = '';
    controllerMessage.text = '';

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Done!"),
        content: Text("Feedback wurde erfolgreich gesendet!"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text("okay!"),
          ),
        ],
      ),
    );
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ],
      );
}
