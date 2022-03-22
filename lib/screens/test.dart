import 'package:flutter/material.dart';
import 'package:myconnexia/screens/afficherunplan_screen.dart';

// Main Function Start
void main() {
  runApp(MyApp());
}
// Main Function Ends

// First Stateless Widget with MaterialApp Start
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}
// First Stateless Widget with MaterialApp Ends


// Main Stateful Widget Start
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "Plan Interactif",
    "Salle De Réunion",
    "Reservations MySite",
    "Qr Code",
    "Sites",
  ];

  // Description List Here
  var descList = [
    "Trouver, Réserver",
    "Réserver Par Critéres",
    "Voir mes Réservations",
    "Signaler, Réserver",
    "Informations Pratiques",
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/plan interactif.png",
    "assets/images/qr code.png",
    "assets/images/Reservations MySite.png",
    "assets/images/Salle de reunion.png",
    "assets/images/site.png",
   
  ];


  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
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
    
    backgroundColor: Color(0xFFFAF9F9),

      // Main List View With Builder
      body: SingleChildScrollView(
        child: Padding(
          
          padding:MediaQuery.of(context).padding ,
        
          child: Column(
            children: [
              
                 Align(alignment: Alignment.topLeft,child: Text("  THALES",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
                    SizedBox(height: 6,),
                    Align(alignment: Alignment.topLeft,child: Text("    France - HELIOS",textAlign: TextAlign.right,style: TextStyle(fontSize: 16,color: Colors.grey.shade400),)),
                     SizedBox(height: 6,),
                     Align(alignment: Alignment.topLeft,child: Text("    Boréal",style: TextStyle(fontSize: 16,color: Colors.grey.shade400),)),
              Container(
               
                
                 padding: new EdgeInsets.only(top: 20.0),
                 
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                       onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Afficherunplan()),
        ),
                      
                      
                      // Card Which Holds Layout Of ListView Item
                      child: Card(
                        
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Row(
                            
                            children: <Widget>[
                              
                   
                              Padding(
                                padding: const EdgeInsets.all(10.0),
              
              
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      titleList[index],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      
                                      width: width,
                                      child: Text(
                                        descList[index],
                                        maxLines: 3,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey[500]),
                                      ),
                                    ),
                                    
                                  ],
                                  
                                ),
                                
                              ),
              
                               Container(
                    height: 75.0,
                    width: 110.0,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(imgList[index]),
                        fit: BoxFit.fill,
                      ),
                      borderRadius:
                      BorderRadius.circular(8.0),
                    ),
                  ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This is a block of Model Dialog 
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
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
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}