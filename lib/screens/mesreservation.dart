import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myconnexia/screens/signalerunproblem.dart';
class Mesreservation extends StatefulWidget {
  const Mesreservation({ Key? key }) : super(key: key);

  @override
  State<Mesreservation> createState() => _MesreservationState();
}

class _MesreservationState extends State<Mesreservation> {
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
      title: Text("Hélios Borel - Etage 2",style: TextStyle(color: Colors.black,fontSize: 15,)),
     
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
    ),
    backgroundColor: Color(0xFFE5E5E5), 

    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
            SizedBox(
height: 32,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Container(
                child: Text("Type",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xFF2E3A59)),),
              ),
            ),
          ),
           SizedBox(
height: 32,
          ),
           Align(
             alignment: Alignment.center,
             child: Container(
             
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
           ),
           SizedBox(
             height: 19,
           ),
           Container(
             child:Row(
               children: <Widget>[
                  SizedBox(
                    width: 151,
                   
                    child: Padding(
                      padding: const EdgeInsets.only(left : 21.0),
                      child: ElevatedButton(
                        
                        
                          child: Text(
                            "A venir",
                            style: TextStyle(fontSize: 14)
                          ),
                          style: ElevatedButton.styleFrom(
                          
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        
                        ),
                                    primary: Color(0XFF2E3A59),
                                    textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                  
                          onPressed: () => null
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  SizedBox(
                    width: 151,
                   
                    child: ElevatedButton(
                      
                      
                        child: Text(
                          "Passé",
                          style: TextStyle(fontSize: 14,color:Color(0XFF2E3A59) ),
                        ),
                        style: ElevatedButton.styleFrom(
                        
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      
                      ),
                                  primary: Color(0XFFE2E2EA),
                                  textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                  
                        onPressed: () => null
                    ),
                  ),
               ],
             ),
           ),
           SizedBox(height: 26,),
           Container(
              width: 347,
              height: 370,
             child: Card(
              
              color: Color(0XFFFFFFFF),
                semanticContainer: true,
                  elevation: 0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top:13.0,left: 21),
                          child: Row(
                                    children: <Widget>[ 
                                      Text(
                                        "Reservation Instant Mobile",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0XFF273155)),
                                      ),
                                      SizedBox(width: 71,),
                                      Text(
                                        "178797",
                                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color(0XFF97A3C3) ),
                                      ), 
                                    ],
                                  ), 
                        ),
                      ),
                        SizedBox(
                        height: 9,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "04/03/2022",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 6,),
                                        Text(
                                          "14:00 h",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF97A3C3) ),
                                        ), 
                                      ],
                                    ),
                      ), 
                        SizedBox(
                        height: 6,
                      ),
                        Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "04/03/2022",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 6,),
                                        Text(
                                          "14:00 h",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF97A3C3) ),
                                        ), 
                                      ],
                                    ),
                      ), 
                       SizedBox(
                        height: 6,
                      ),
                        Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Durée",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 45,),
                                        Text(
                                          "2h 30",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Etat:",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 67,),
                                        Text(
                                          "Accepté(e)",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ),  
                        SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Propriétaire:",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 13,),
                                        Text(
                                          "Clyde MOUFFRANC",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ), 
                       SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Mise a jour:",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 13,),
                                        Text(
                                          "3 Mars ,2022, 14:30",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ), 
                       SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Ressource(s):",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 1,),
                                        Text(
                                          "Salle de réunion-B6112-5P",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0XFF273155) ),
                                        ), 
                                       
                                      ],
                                    ),
                                    
                      ),
                      SizedBox(height: 26,),   
                       Padding(
                         padding: const EdgeInsets.only(left : 48.0),
                         child: Container(
                                            child:Row(
               children: <Widget>[
                  SizedBox(
                    width: 107,
                   
                     child: ElevatedButton.icon(
                       
          icon: Icon(
             FontAwesomeIcons.pen,
            color: Colors.white,
            size: 14.0,
          ),
          
          label: Text(' Edit'),
          onPressed: () {
            print('Pressed');
          },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(14.0),
              
            ),
            primary: Color(0XFF273155),                       
          ),
        ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  SizedBox(
                    width: 107,
                   
                    child: ElevatedButton.icon(
                       
          icon: Icon(
           FontAwesomeIcons.trashAlt,
            color: Color(0XFFD1204B),
            size: 14.0,
          ),
          
          label: Text(' Annuler',style: TextStyle( color: Color(0XFFD1204B),),),
          onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signalerunproblem()),
                );
              },
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(14.0),
              
            ),
            primary: Color(0XFFFFFFFF),                       
          ),
        ),
                  ),
               ],
             ),
                                          ),
                       ),
                    ],
                    
                  ),
                  
             ),
             
           ),
        ],
      ),
      
    ),

    );
  }
}