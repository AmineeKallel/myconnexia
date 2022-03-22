import 'package:flutter/material.dart';
import 'package:myconnexia/screens/signalerunproblem.dart';

class NextSignalerunprolem extends StatefulWidget {
  const NextSignalerunprolem({ Key? key }) : super(key: key);

  @override
  State<NextSignalerunprolem> createState() => _NextSignalerunprolemState();
}

class _NextSignalerunprolemState extends State<NextSignalerunprolem> {
  @override
   final TextEditingController _Textcontroller = TextEditingController();
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
                                          "Etape 2/",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0XFF273155)),
                                        ),
                                        Text("2"),
                                        SizedBox(width: 30,),
                                        Text(
                                          "Je décris mon incident",
                                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0XFF97A3C3),letterSpacing: 0.3 ),
                                        ), 
                                      ],
                                    ),
            ), 

          ),
            SizedBox(
                        height: 42,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Ressources",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 77,),
                                        Text(
                                          "B2180-BOX",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ),
                      SizedBox(height: 18,),
                        Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Probléme",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 90,),
                                        Text(
                                          "Test CMO",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ), 
                       SizedBox(height: 18,),
                        Padding(
                        padding: const EdgeInsets.only(top:9.0,left: 21),
                        child: Row(
                                      children: <Widget>[ 
                                        Text(
                                          "Description",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0XFF97A3C3)),
                                        ),
                                        SizedBox(width: 78,),
                                        Text(
                                          "Aucune detail fournis",
                                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color:Color(0XFF273155) ),
                                        ), 
                                      ],
                                    ),
                      ),
                      SizedBox(height: 35,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left : 32.0),
                          child: Text("Gravité",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Color(0XFF2E3A59)),),
                        )) ,
                        SizedBox(height: 16,),
                         Container(
             child:Row(
               children: <Widget>[
                  SizedBox(
                    width: 96,
                    height: 32,
                   
                    child: Padding(
                      padding: const EdgeInsets.only(left : 21.0),
                      child: ElevatedButton(
                        
                        
                          child: Text(
                            "Basse",
                            style: TextStyle(fontSize: 14,color: Color(0XFF6FB97D),),
                            
                          ),
                          style: ElevatedButton.styleFrom(
                          
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        
                        ),
                                    primary: Color(0XFFA4E0B0),
                                    textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    )),
                  
                          onPressed: () => null
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 96,
                    height: 32,
                    child: ElevatedButton(
                      
                      
                        child: Text(
                          "Moyenne",
                          style: TextStyle(fontSize: 14,color:Color(0XFFE0BE65) ),
                        ),
                        style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Color(0XFFF5E79B),),
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        
                      
                      ),
                                  primary: Color(0XFFFFFFFF),
                                  
                                  textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                                  
                  
                        onPressed: () => null
                    ),
                    
                  ),
                    SizedBox(
                    width: 20,
                  ),
                  
                   SizedBox(
                    width: 96,
                     height: 32,
                   
                    child: ElevatedButton(
                      
                      
                        child: Text(
                          "Haute",
                          style: TextStyle(fontSize: 14,color:Color(0XFFD1204B) ),
                        ),
                        style: ElevatedButton.styleFrom(
                         side: BorderSide(width: 2.0, color: Color(0XFFEDA9A9),),
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      
                      ),
                                  primary: Color(0XFFFFFFFF),
                                  textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                  
                        onPressed: () => null
                    ),
                  ),
          
               ],
             ),
           ),
           SizedBox(height: 36,),
                   Align(
                     alignment: Alignment.topLeft,
                     child: Padding(
                       padding: const EdgeInsets.only(left : 30.0),
                       child: Text("Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0XFF2E3A59)),),
                     )),
                     SizedBox(
                       height: 7,
                     ),
                    Container(
                      width: 318,
                      
                      child: TextFormField(
                controller: _Textcontroller,
                minLines: 2,
                maxLines: 7,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                 
                  hintStyle: TextStyle(
                      color: Color(0XFFF8F8FA)
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
              ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                     Container(
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
                                       MaterialPageRoute(builder: (context) => Signalerunproblem()),
                                     );
                                   },
                               child: Text("Envoyer",
                               textAlign : TextAlign.center,
                               style: TextStyle(color: Colors.white,
                               fontWeight: FontWeight.bold,
                               
                               ),
                               
                               ),
                             ),
                         ),
                     ),
    SizedBox(
      height: 16,
    ),
     Container(
       width: 335,
       child: Material(
                       
          borderRadius: BorderRadius.circular(15),
          color :Color(0xFFFFFFF),
          child: MaterialButton(
     
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signalerunproblem()),
                  );
                },
            child: Text("Annuler",
            textAlign : TextAlign.center,
            style: TextStyle(color: Color(0xFF2E3A59),
            fontWeight: FontWeight.bold,
            
            ),
            
            ),
          ),
         ),
     ),
        ],
      ),
    ),
    );
  }
}