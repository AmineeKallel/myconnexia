import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myconnexia/screens/login_screen.dart';
import 'package:myconnexia/screens/mesreservation.dart';

class ChoisirRessources extends StatefulWidget {
  const ChoisirRessources({ Key? key }) : super(key: key);

  @override
  State<ChoisirRessources> createState() => _ChoisirRessourcesState();
}

class _ChoisirRessourcesState extends State<ChoisirRessources> {
  @override
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        elevation: 0,
        

      leading: BackButton(
            color: Colors.black
          ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("Hélios Borel - Etage 2",style: TextStyle(color: Colors.black,fontSize: 15,)),
     
      
    
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
    ),   

    backgroundColor: Color(0xFFE5E5E5), 

    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
height: 15,
          ),
           Container(
  
        width: 320,
      
  
        child:  TextField(
  
          
  
              decoration:  InputDecoration(
  
                 hintText: 'Nom',
  
                  hintStyle: TextStyle(color:Color(0xFF171725)),
  
                filled: true,
  
              fillColor: Colors.white,
  
                  border:  OutlineInputBorder(
  
                    borderRadius: BorderRadius.circular(10),
  
                      borderSide:  BorderSide(color: Color(0xFFE2E2EA))),
  
               focusedBorder:OutlineInputBorder(
  
              borderSide: const BorderSide(color: Color(0xFFE2E2EA), width: 2.0),),
  
            
  
                  prefixIcon: const Icon(
  
                    Icons.search,
  
                    color: Color(0xFF2E3A59),
  
                  ),
  
                  
  
                      suffixIcon: Align(
  
            widthFactor: 1.4,
  
            heightFactor: 1.0,
  
            child: 
  
              SvgPicture.asset("assets/images/filtre.svg"),
              
  
            ),
            
  
          ),
        
   
                              
        ),
  
      ),
           SizedBox(
             height: 20,
           ),
           Padding(
             padding: const EdgeInsets.only(left :20.0),
             child: Container(
               alignment: Alignment.topLeft,
               child: Text("36 Résulltats",style: TextStyle(color: Color(0xFF97A3C3)),),
             ),
             
           ) ,
           SizedBox(height: 16,),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left :20.0),
               child: Row(
  children: <Widget>[
  
     Text("Salle De Réunion - B3037 - 5P ",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 86), // give it width
     Icon(Icons.heart_broken, size: 20,color: Color(0xFF97A3C3),),
      
  ],
),

             )
           ),
           SizedBox(
             height: 9,
           ),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.pin_drop, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("Boréal - Etage 3",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 80), // give it width
  
      
  ],
),

             )
           ),
           SizedBox(height: 15,),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.group_outlined, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("5 Personnes",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 125),

 InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
             setState(() => _value = _value);
        if (_value) {
          // show dialog if check box is checked
        showModalBottomSheet<void>(
    
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 270,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left :41),
                          child: const Text('Ressources Slectionnée',style:  TextStyle(fontSize: 14,color:Color(0xFF2E3A59),fontWeight: FontWeight.w500),),
                        )),
                        SizedBox(height: 13,),
                    Align(
                       alignment: Alignment.topLeft,
                      child: Padding(
                        
                         padding: const EdgeInsets.only(left :41),
                        child: Text("Salle De Réunion - B3037 - 5P",style:  TextStyle(fontSize: 18,color:Color(0xFF2E3A59),fontWeight: FontWeight.w600),),
                      )),
                    SizedBox(height: 30,),
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Material(
                         
                       
        borderRadius: BorderRadius.circular(12),
        color :Color(0xFF2E3A59),
        child: MaterialButton(

          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
           onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mesreservation()),
                );
              },
          child: Text("Comfirmer",
          textAlign : TextAlign.center,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          
          ),
          
          ),
          
        ),
        
    ),
    
                     ),
                     SizedBox(height: 15,),
                     Center(child: TextButton(onPressed: (){}, child: Text("Annuler",style:  TextStyle(fontSize: 15,color:Color(0xFF2E3A59),fontWeight: FontWeight.w600),)))
                    ],
                  ),
                ),
              );
            },
          );
        }
          });
        },
        
        child: Container(
    
          child: _value
              ? Icon(
                  Icons.check,
                 
                  color: Color(0xFF97A3C3),
                )
              : Icon(
                    Icons.check_box_outline_blank,
                  
                  color: Color(0xFF97A3C3),
                ),
                
        ),
      )
      
  ],
),

             )
           ),
           SizedBox(height: 17,),
              Divider(
  
         height: 20,
        thickness: 1, 
              indent: 47,  
              endIndent: 0,  
              color: Color(0XFFF1F1F5), 
      ),
       SizedBox(height: 16,),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left :20.0),
               child: Row(
  children: <Widget>[
  
     Text("Salle De Réunion - B3037 - 5P ",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 86), // give it width
     Icon(Icons.heart_broken, size: 20,color: Color(0xFF97A3C3),),
      
  ],
),

             )
           ),
           SizedBox(
             height: 9,
           ),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.pin_drop, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("Boréal - Etage 3",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 80), // give it width
  
      
  ],
),

             )
           ),
           SizedBox(height: 15,),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.group_outlined, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("5 Personnes",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 125),

 InkWell(
        onTap: () {
          setState(() {
            _value1 = !_value1;
          });
        },
        child: Container(
    
          child: _value1
              ? Icon(
                  Icons.check,
                 
                  color: Color(0xFF97A3C3),
                )
              : Icon(
                    Icons.check_box_outline_blank,
                  
                  color: Color(0xFF97A3C3),
                ),
        ),
      )
      
  ],
),

             )
           ),
           SizedBox(height: 17,),
              Divider(
  
         height: 20,
        thickness: 1, 
              indent: 47,  
              endIndent: 0,  
              color: Color(0XFFF1F1F5), 
      ),
       SizedBox(height: 26,),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left :20.0),
               child: Row(
  children: <Widget>[
  
     Text("Salle De Réunion - B3037 - 5P ",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 86), // give it width
     Icon(Icons.heart_broken, size: 20,color: Color(0xFF97A3C3),),
      
  ],
),

             )
           ),
           SizedBox(
             height: 9,
           ),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.pin_drop, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("Boréal - Etage 3",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 80), // give it width
  
      
  ],
),

             )
           ),
           SizedBox(height: 15,),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.group_outlined, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("5 Personnes",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 125),

 InkWell(
        onTap: () {
          setState(() {
            _value2 = !_value2;
          });
        },
        child: Container(
    
          child: _value2
              ? Icon(
                  Icons.check,
                 
                  color: Color(0xFF97A3C3),
                )
              : Icon(
                    Icons.check_box_outline_blank,
                  
                  color: Color(0xFF97A3C3),
                ),
        ),
      )
      
  ],
),

             )
           ),
           SizedBox(height: 17,),
              Divider(
  
         height: 20,
        thickness: 1, 
              indent: 47,  
              endIndent: 0,  
              color: Color(0XFFF1F1F5), 
      ),
       SizedBox(height: 16,),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(left :20.0),
               child: Row(
  children: <Widget>[
  
     Text("Salle De Réunion - B3037 - 5P ",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 86), // give it width
     Icon(Icons.heart_broken, size: 20,color: Color(0xFF97A3C3),),
      
  ],
),

             )
           ),
           SizedBox(
             height: 9,
           ),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.pin_drop, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("Boréal - Etage 3",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 80), // give it width
  
      
  ],
),

             )
           ),
           SizedBox(height: 15,),
            Container(
             child: Padding(
               padding: const EdgeInsets.only(left :47.0),
               child: Row(
  children: <Widget>[
    Icon(Icons.group_outlined, size: 30,color: Color(0xFF97A3C3),),
    SizedBox(width: 6),
     Text("5 Personnes",style: TextStyle(color: Color(0xFF2E3A59),fontSize: 14, ),),
    SizedBox(width: 125),

 InkWell(
        onTap: () {
          setState(() {
            _value3 = !_value3;
          });
        },
        child: Container(
    
          child: _value3
              ? Icon(
                  Icons.check,
                 
                  color: Color(0xFF97A3C3),
                )
              : Icon(
                    Icons.check_box_outline_blank,
                  
                  color: Color(0xFF97A3C3),
                ),
        ),
      )
      
  ],
),

             )
           ),
           SizedBox(height: 17,),
              Divider(
  
         height: 20,
        thickness: 1, 
              indent: 47,  
              endIndent: 0,  
              color: Color(0XFFF1F1F5), 
      ),
        ],
      ),
    ),

    );
  }
}