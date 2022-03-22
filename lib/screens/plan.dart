

import 'package:flutter/material.dart';
import 'package:myconnexia/screens/reservation.dart';

class Plan extends StatefulWidget {
  const Plan({ Key? key }) : super(key: key);

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
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
    backgroundColor: Colors.black,
    
      body: SingleChildScrollView(
        child: Column(
          children: [
           
             Image.asset('assets/images/mapplan.png'), 
            
          ],
          
        ),
        
      ),

       floatingActionButton: Column(
      
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton(
        backgroundColor: Colors.white,
  onPressed: () {
  showModalBottomSheet<void>(
    
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                      const Text('Libre Pour Le Reste De La Journée',style:  TextStyle(fontSize: 14,color:Color(0xFF2E3A59),),),
                    
                    SizedBox(height: 2,),
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
                  MaterialPageRoute(builder: (context) => Reservation()),
                );
              },
          child: Text("S’y Rendre",
          textAlign : TextAlign.center,
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          
          ),
          
          ),
          
        ),
        
    ),
    
                     ),
                     SizedBox(height: 15,),
                     Center(child: TextButton(onPressed: (){}, child: Text("Plus D’informations",style:  TextStyle(fontSize: 15,color:Color(0xFF2E3A59),fontWeight: FontWeight.w600),)))
                    ],
                  ),
                ),
              );
            },
          );
  },
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  
  child: const Icon(Icons.search_outlined,color: Colors.black,size: 35,),
      ),
      SizedBox(
        height: 10,
      ),
      FloatingActionButton(           
       backgroundColor: Colors.white,
  onPressed: () {
    showDialog(
      
        context: context,
        builder: (_) => AlertDialog(
            title: Text('Dialog Title'),
            content: Text('This is my content'),
        )
    );
  },
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
 
  child: const Icon(Icons.search_outlined,color: Colors.black,size: 35,),
      )
    ]
  )
    
    );
   
  }
}