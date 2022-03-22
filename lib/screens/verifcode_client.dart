import 'package:flutter/material.dart';
import 'package:myconnexia/screens/login_screen.dart';

class Verifcodeclient extends StatefulWidget {
  const Verifcodeclient({ Key? key }) : super(key: key);

  @override
  State<Verifcodeclient> createState() => _VerifcodeclientState();
}

class _VerifcodeclientState extends State<Verifcodeclient> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
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
                  Text("Code Client",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus vehicula molestie quis id orci orci, sed est lobortis.",style: TextStyle(fontSize: 14,color: Colors.grey.shade400),),
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
                    keyboardType: TextInputType.number,
                    
                    decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xFFF8F8FA),
                      labelText: "Code Client",
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
                  
                  SizedBox(height: 35,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Material(
        borderRadius: BorderRadius.circular(10),
        color :Color(0xFF2E3A59),
        
        child: MaterialButton(
           
          onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
        
          child: Text("Verification",
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