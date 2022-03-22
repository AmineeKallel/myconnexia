import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myconnexia/screens/nextsignalerunprobleme.dart';

class Signalerunproblem extends StatefulWidget {
  const Signalerunproblem({ Key? key }) : super(key: key);

  @override
  State<Signalerunproblem> createState() => _SignalerunproblemState();
}

class _SignalerunproblemState extends State<Signalerunproblem> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        
        

      leading: BackButton(
            color: Colors.black
          ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("Signaler Un probléme",style: TextStyle(color: Colors.black,fontSize: 15,)),
     
      actions: [
        new IconButton(
            icon: new Image.asset('assets/images/qrcode.png'),
            
            onPressed: () {},
          ),
       
    ],
    
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
    toolbarHeight: 60,
    ),
     backgroundColor: Color(0xFFE5E5E5),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
        height: 26,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left:32.0),
              child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Etape 1/",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0XFF273155)),
                                        ),
                                        Text("2"),
                                        SizedBox(width: 30,),
                                        Text(
                                          "Je choisis une catégorie",
                                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0XFF97A3C3),letterSpacing: 0.3 ),
                                        ), 
                                      ],
                                    ),
            ), 

          ),
          SizedBox(
            height: 30,
          ),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(FontAwesomeIcons.mapMarkerAlt, size: 20,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("B2180- BOX",style: TextStyle(color: Color(0xFF273155),fontSize: 16,fontWeight: FontWeight.w500 ),),
    SizedBox(width: 80), // give it width
  
      
  ],
),



             )
           ),
           SizedBox(
        height: 45,
          ),
           Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 132,
                      height: 134,
                    child: Card(
                      
                      child:  InkWell(
                         onTap: () {
        Navigator.push(context,CupertinoPageRoute(builder: (redContext) => NextSignalerunprolem()));
    },
                        child: Container(
                          
                          color: Color(0XFFF5F7FA),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:93.0),
                                child: Icon(
                                 FontAwesomeIcons.ellipsisH,
                                  
                                  size: 22.0,
                                ),
                              ),
                              Container(
                                
                                child: Icon(
                                  
                                 FontAwesomeIcons.file,
                                  color: Color(0XFF97A3C3),
                                  size: 55.0,
                                  
                                ),
                                
                              ),
                              SizedBox(
                                height: 14,
                              ),
                            Container(
                              child: Text("Menu Test",style: TextStyle(color:Color(0XFF2E3A59),fontSize: 14,fontWeight: FontWeight.w500 ),),
                            ),
                            ],
                            
                          ),
                        ),
                      ),
                    
                    )),
SizedBox(
  width: 47,
),
                   Container(
                      width: 132,
                      height: 134,
                    child: Card(
                      child: InkWell(
    onTap: () {
        Navigator.push(context,CupertinoPageRoute(builder: (redContext) => NextSignalerunprolem()));
    },
                      child:  Container(
                        color: Color(0XFFF5F7FA),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:93.0),
                              child: Icon(
           FontAwesomeIcons.ellipsisH,
            
            size: 22.0,
          ),
                            ),
                            Container(
                              child: Icon(
           FontAwesomeIcons.desktop,
            color: Color(0XFF97A3C3),
            size: 40.0,
          ),
          
                            ),
                            SizedBox(
                              height: 14,
                            ),
                          Container(
                            child: Column(
                              children: [
                                Text("4.0 menu ",style: TextStyle(color:Color(0XFF2E3A59),fontSize: 14,fontWeight: FontWeight.w500 ),),
                                 Text("Muilti-3 vision ",style: TextStyle(color:Color(0XFF2E3A59),fontSize: 14,fontWeight: FontWeight.w500 ),),
                              ],
                            ),
                          ),
                          ],
                          
                        ),
                      ),
                      ),
                    )),
                ],
              ),
           )
        ],
      ),
    ),
      
    );
  }
}