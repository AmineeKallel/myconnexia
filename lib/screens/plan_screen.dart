import 'package:flutter/material.dart';

class Planscreen extends StatefulWidget {
  const Planscreen({ Key? key }) : super(key: key);

  @override
  State<Planscreen> createState() => _PlanscreenState();
}

class _PlanscreenState extends State<Planscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
  children: <Widget>[
    Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print("Got it");
        },
        child: Container(
          child: Text("title", style: TextStyle(fontSize: 20)),
          //width: 300,
          height: 100,
          color: Colors.blue,
        ),
      ),
    ),
    Card(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: SizedBox(
                
        height: 34.0,
        width: 35.0, // fixed width and height
        child: Image.asset("assets/images/plan.png")
      ),
              trailing: SizedBox(
                
        height: 34.0,
        width: 35.0, // fixed width and height
        child: Image.asset("assets/images/GO.png")
      ),
              title:Text("Hélios Boreal Etage :  $index",style:  TextStyle(fontSize: 16,color:Color(0xFF2E3A59),)),
              );
          }
          ),
      ),
  ]
),
    );
  }
}