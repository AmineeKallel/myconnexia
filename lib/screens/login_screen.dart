import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myconnexia/screens/home_screen.dart';
import 'package:myconnexia/screens/test.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          leading: BackButton(
            color: Color(0xFF2E3A59)
          ),
           shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
     ),
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 120,),
                  Text("Log in,",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  SizedBox(height: 6,),
                  Text("Log in by fill the form to continue.",style: TextStyle(fontSize: 14,color: Colors.grey.shade400),),
                   SizedBox(height: 25,),
                  Divider(
                  color: Colors.grey,
                ),
                SizedBox(height: 40,),
                ],
              ),
              
              Column(
                children: <Widget>[
                  // Text('Number', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xFFF8F8FA),
                      prefixIcon: Icon(Icons.person,color:Color(0xFF2E3A59),),
                      labelText: "User name",
                      labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color :Color(0xFF98A7B7),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xFFF8F8FA),
                      prefixIcon: Icon(Icons.key,color:Color(0xFF2E3A59),),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color :Color(0xFF98A7B7),
                          )
                      ),
                    ),
                  ),
                
                  SizedBox(height: 35,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Material(
                     
        borderRadius: BorderRadius.circular(8),
        color :Color(0xFF2E3A59),
        child: MaterialButton(

          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              },
          child: Text("Login",
          textAlign : TextAlign.center,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          
          ),
          
          ),
        ),
    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 50,
                    width: double.infinity,
                   
                  ),
                  SizedBox(height: 30,),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}