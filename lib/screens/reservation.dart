
import 'package:flutter/material.dart';
import 'package:myconnexia/screens/login_screen.dart';
import 'package:myconnexia/screens/reservation2.dart';

class Reservation extends StatefulWidget {
  const Reservation({ Key? key }) : super(key: key);

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
           
         ),
     appBar: AppBar(
         elevation: 0,
           backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("MY Site",style: TextStyle(color: Colors.black,fontSize: 24,)),
       iconTheme: IconThemeData(color: Colors.black),
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
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
         icon: Image.asset(
           "assets/images/menu.png",
           width: 25,
           height: 25,
           ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
        
      },
      
    ),
    
  ),
    backgroundColor: Color(0XFFE5E5E5),
    
      body: Column(


        children: [
Padding(
  padding: const EdgeInsets.only(top: 8.0,left: 25),
  child:   Container(
  
    alignment: Alignment.topLeft,
  
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
  
                      child: Text("Salle De Réunion-2040",
  
                          style: TextStyle(
  
                                color: Color(0xFF2E3A59),
  
                              fontSize: 14,fontWeight:FontWeight.w600)),
  
                    ),
),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 20),
                    child: Container(
                        alignment: Alignment.topLeft,
                    
                      child: Text.rich(
    TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
         
                
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ImageIcon(
     AssetImage("assets/images/location.png"),
     color: Color(0xFF97A3C3),
     size: 28,
    
),
                ),),
            TextSpan(text: '8502 Preston Rd. Inglewood, Maine 98380', style: TextStyle(
                                color: Color(0xFF97A3C3),
                                 fontSize: 14,fontWeight:FontWeight.w600)),
            
           
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40
      ),
),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                        alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text.rich(
    TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
         
                
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: ImageIcon(
     AssetImage("assets/images/groupe.png"),
     color: Color(0xFF97A3C3),
     size: 28,
    
),
                ),),
            TextSpan(text: '  10 Personnes', style: TextStyle(
                              color: Color(0xFF97A3C3),
                               fontSize: 14,fontWeight:FontWeight.w600)),
            
           
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40
      ),
) 
                    ),
                  ),


 SizedBox(height: 10,),
        
        
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:    Column(
              children: [
                Card(
                  elevation: 0.0,
                color: Color(0XFFE5E5E5),
                child: Container(
                 
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    
                      borderRadius: BorderRadius.circular(16.0),
                  
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF505285),
                        Color(0xFF585E92),
                        Color(0xFF65689F),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),

                  
                  child: Column(
                  
                    children: [
                    
                      Container(
                        
alignment: Alignment.topLeft,
  
                              margin: EdgeInsets.all(10),
  
                              child: Row(
                                
                                children: [
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(left:4.0),
                                    child: Container( child: Text("Réserver",
  
                                          style: TextStyle(
  
                                                color:Color(0xFFFFFFFF),
  
                                              fontSize: 16,fontWeight:FontWeight.w600)),),
                                  ),
                                  Container(
                                    
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 120),
                                     child: OutlinedButton(
                                       
  onPressed: null,
  style: ButtonStyle(
   backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
  ),
  child: const Text("00:02:23",style: TextStyle(
                                        color: Color(0xFFD1204B),
                                         fontSize: 14,fontWeight:FontWeight.w600),),
  
),
                                   ),
                                  ),
                                ],
                              ),
                              

                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            
                            Container(
                              
                      child: Text.rich(
                       
                              TextSpan(
                                  children: <InlineSpan>[
                                    WidgetSpan(
                                   
                                          
                                          child: Padding(
                            
                            padding: const EdgeInsets.only(right: 5),
                            
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: ImageIcon(
                                 AssetImage("assets/images/user.png"),
                                 color: Color(0xFFFFFFFF),
                                 size: 20,
                                
                      ),
                            ),
                                          ),),
                                      TextSpan(text: '10 Personnes', style: TextStyle(
                                        color: Color(0xFFEBE5E5),
                                         fontSize: 14,fontWeight:FontWeight.w600)),
                                      
                                     
                                  ],
                                ),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40
                                ),
                      ) 
                            ),
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:12.0),
                         child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                      child: Text.rich(
                         
                            TextSpan(
                                children: <InlineSpan>[
                                  WidgetSpan(
                                 
                                        
                                        child: Padding(
                          
                          padding: const EdgeInsets.only(right: 5),
                          
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: ImageIcon(
                               AssetImage("assets/images/time.png"),
                               color: Color(0xFFFFFFFF),
                               size: 20,
                              
                      ),
                          ),
                                        ),),
                                    TextSpan(text: '14:00 H', style: TextStyle(
                                      color: Color(0xFFEBE5E5),
                                       fontSize: 14,fontWeight:FontWeight.w600)),
                                    
                                   
                                ],
                              ),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40
                              ),
                      ) 
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
         Container(
             height: 50,
           
                    width: 335,
            child: Material(
              
                borderRadius: BorderRadius.circular(15),
        color :Color(0xFF2E3A59),
              child: MaterialButton(
            
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Proceduredereservation()),
                  );
                },
                      child: Text("Réserver Plus Tard",
                      textAlign : TextAlign.center,
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      
                      ),
                      
                      ),
                    ),
            ),

            
          ),
          
        ],
      ),
      );
  }
}