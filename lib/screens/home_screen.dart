import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  get destination => null;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
   
 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: Drawer(),
    appBar: AppBar(
      
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("MY APP",style: TextStyle(color: Colors.black,fontSize: 24,)),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Icon(Icons.qr_code,
        size: 40,),
        
       
    ],
     shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
    ),
   backgroundColor: Color(0xFFE5E5E5),
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
                  SizedBox(height: 30,),
                  Text("THALES,",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text("France - HELIOS.",style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                  SizedBox(height: 15,),
                  Text("Boréal",style: TextStyle(fontSize: 16,color: Colors.grey.shade400),),
                   SizedBox(height: 25,),
                   Container(
                     height: 130,
                     child: Card(   
              child: Row(
                children: <Widget>[
                  Container(      
                    width: 120,
                    height: 80,         
                    child: Image.asset('assets/images/lvl1.jpg'),                     
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                         "Amine",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                       ),
                        Container(                         
                          child: Text(
                         "Push yourself,",
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                          
                          
                        ),
                        
                      ],

                      
                      
                    ),
                  )
                ],
              ),

              
            ),

            
                   )
                ],
                
              ),
            ],
          ),
        
        ),

        
      ),

    );
      
  }
}