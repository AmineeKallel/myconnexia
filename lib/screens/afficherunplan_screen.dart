import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myconnexia/screens/plan.dart';

class Afficherunplan extends StatefulWidget {
  const Afficherunplan({ Key? key }) : super(key: key);

  @override
  State<Afficherunplan> createState() => _AfficherunplanState();
}

class _AfficherunplanState extends State<Afficherunplan> {
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
      title: Text("Afficher un Plan",style: TextStyle(color: Colors.black,fontSize: 24,)),
     
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
    backgroundColor: Color(0XFFFAF9F9
),
    
      body: SingleChildScrollView(
        child: Column(
          children: [
 SizedBox(height: 10,),
            Row(
   children: <Widget>[
    
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         child: Image.asset("assets/images/plan.png",
         width: 42,
         height: 42,),
       ),
     ),
     Text("Listes Des Plans",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,height: 2.5 ),)
   ]
 ),
           Padding(
             padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
            
         
             child: new TextField(
            decoration:  InputDecoration(
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
          widthFactor: 1.2,
          heightFactor: 1.0,
          child: 
            SvgPicture.asset("assets/images/bnt_search.svg"),
          ),
        ),
      ),
          
        
           ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 0.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
          shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context,int index){
                    return ListTile(
                      leading: SizedBox(
                        
                height: 34.0,
                width: 35.0, // fixed width and height
                child: Image.asset("assets/images/plan_listing.png")
              ),
             onTap: () {
                 Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => Plan()),
        );
                },
                      trailing: SizedBox(
                        
                height: 34.0,
                width: 35.0, // fixed width and height
                child: Image.asset("assets/images/next.png")
                
              ),
                      title:Text("Hélios Boreal - Etage  $index",style:  TextStyle(fontSize: 16,color:Color(0xFF2E3A59),)),
                      );
                  }
                  ),
              ),
            ),
          ],
        ),
      ),
    );
      
    
  }
}