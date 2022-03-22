import 'package:flutter/material.dart';
import 'package:myconnexia/screens/afficherunplan_screen.dart';
import 'package:myconnexia/screens/home_screen.dart';
import 'package:myconnexia/screens/login_screen.dart';
import 'package:myconnexia/screens/mesreservation.dart';
import 'package:myconnexia/screens/plan.dart';
import 'package:myconnexia/screens/plan_screen.dart';
import 'package:myconnexia/screens/reservation.dart';
import 'package:myconnexia/screens/reservation2.dart';
import 'package:myconnexia/screens/signalerunproblem.dart';
import 'package:myconnexia/screens/test.dart';
import 'package:myconnexia/screens/verifcode_client.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home:  Signalerunproblem(),
    );
  }
}
