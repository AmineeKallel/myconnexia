import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:myconnexia/screens/choisirressources.dart';

class Proceduredereservation extends StatefulWidget {
  
  const Proceduredereservation({ Key? key }) : super(key: key);

  @override
  State<Proceduredereservation> createState() => _ProceduredereservationState();
}

class _ProceduredereservationState extends State<Proceduredereservation> {
  @override


final now2 = DateTime.now();
 final DateTime now = DateTime.now();
  final  formatter = DateFormat('EEE,d MMM , ''yy').format(DateTime.now()).toString();
 
final berlinWallFell = DateTime.utc(1989, 11, 9);
final moonLanding = DateTime.now();
  String? _selectedTime1;
  String? _selectedTime2;
  Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime1 = result.format(context);
     
      });
    }
  }

   Future<void> _showdate() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime2 = result.format(context);
     
      });
      
    }
  }

 
  
  RangeValues _currentRangeValues = const RangeValues(1, 21);
  Widget build(BuildContext context) {
    return Scaffold(
      
       drawer: Drawer(
           
         ),
     appBar: AppBar(
         elevation: 0,
           backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("Réserver Une Salle",style:  TextStyle(fontSize: 14,color:Color(0xFF2E3A59),)),
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

body:  SingleChildScrollView(
  
  child:   Column(
  
    children: [
  
       SizedBox(
  
        height: 20,
  
      ) ,
  
      Align(
  
        alignment: Alignment.topLeft,
  
        child: Padding(
  
          padding: const EdgeInsets.only(left : 20.0),
  
          child: Container(
  
            child: Text("Type",style: TextStyle(color:Color(0xFF2E3A59),fontSize: 14,fontWeight: FontWeight.w600),),
  
          ),
  
        ),
  
      ), 
  
      SizedBox(
  
        height: 15,
  
      ) ,
  
      Container(
  
        width: 320,
  
        child:  TextField(
  
          
  
              decoration:  InputDecoration(
  
                 hintText: 'Tous',
  
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
  
            widthFactor: 1.3,
  
            heightFactor: 1.0,
  
            child: 
  
              SvgPicture.asset("assets/images/filtre.svg"),
  
            ),
  
          ),
  
        ),
  
      ), 
  
      SizedBox(
  
        height: 10,
  
      ) ,
  
      Container(
  
            height: 530,
  
            width: 500,
  
            child: Card(
  
              child: Column(
  
                children: [
  
                  ListTile(
  
                    title: Row(
  
    children: const <Widget>[
  
      Text('5 Places'),
  
      Spacer(), // Defaults to a flex of one.
  
      
  
      Text('21 Places'),
  
    ],
  
  )
  
  
  
                    
  
                  ),
  
  
  
                RangeSlider( values: _currentRangeValues,
  
        max: 21,
  
        divisions: 21,
  
        labels: RangeLabels(
  
          _currentRangeValues.start.round().toString(),
  
          _currentRangeValues.end.round().toString(),
  
        ),
  
        onChanged: (RangeValues values) {
  
          setState(() {
  
            _currentRangeValues = values;
  
          });
  
        },
  
      ),
  
      
  
    
  
     
  
          Center(
  
            
  
              child: Column(
  
                 mainAxisSize: MainAxisSize.min,
  
                 children: <Widget>[
  
                   Row(
  
                     children: [
  
                    
  
  
  
                       Align(
  
                         alignment: Alignment.topLeft,
  
                         child: TextButton.icon(
  
                           
  
                                   icon: Icon(Icons.calendar_month,color: Color(0XFF273155),),
                                   
  
                                   label: Text('Date',style: TextStyle(color: Color(0XFF2E3A59)),),
  
                                   onPressed: () {},
  
                                 ),
  
                       ),
                       
  
                       TextButton(
  
      onPressed: () {
  
          DatePicker.showDatePicker(context,
  
                                showTitleActions: true,
  
                                minTime: DateTime.now(),
  
                                maxTime: DateTime(2024, 12, 30), onChanged: (date) {
  
                              print('change $date');
  
                            }, onConfirm: (date) {
  
                              print('confirm $date');
  
                            }, currentTime: DateTime.now(), locale: LocaleType.fr);
  
      },
  
      child: Padding(
  
        padding: const EdgeInsets.only(top:0),
  
        child: Padding(
  
          padding: const EdgeInsets.only(top :30.0),
  
          child: Text(
  
             ('${formatter.toString()}'), 
  
              
  
              style: TextStyle(color:Color(0XFF97A3C3)),
  
          ),
  
          
  
        ),
  
        
  
      ),),
  
    Padding(
  
      padding: const EdgeInsets.only(top: 30.0,left: 70),
  
      child: Icon(
  
            Icons.arrow_right,
  
            size: 24.0,
  
            color: Color(0XFF97A3C3),
  
          ),
  
    ),
  
                     ],
  
                     
  
                   ),
  
                   
  
                 ],
  
              ),
  
            ),
  
             Divider(
  
         height: 20,
        thickness: 1, 
              indent: 50,  
              endIndent: 20,  
              color: Color(0XFFF1F1F5), 
      ),
  
       Center(
              child: Column(
  
                 mainAxisSize: MainAxisSize.min,
  
                 children: <Widget>[
  
                   Column(
                     
                     children: [
                       
                           Align(
  
                             alignment: Alignment.topLeft,
  
                             child: TextButton.icon(

                                       icon: Icon(Icons.timer_rounded),
  
                                       label: Text('Time'),
  
                                       onPressed: () {},
  
                                     ),
  
                           ),
                       Row(
  
                         children: [

                           Container(
                             
                             child: TextButton(
  
      onPressed: () {
  
          DatePicker.showDatePicker(context,
  
                                      showTitleActions: true,
  
                                      minTime: DateTime.now(),
  
                                      maxTime: DateTime(2024, 12, 30), onChanged: (date) {
  
                                    print('change $date');
  
                                  }, onConfirm: (date) {
  
                                    print('confirm $date');
  
                                  }, currentTime: DateTime.now(), locale: LocaleType.fr);
  
      },
  
      child: Padding(
        padding: const EdgeInsets.only(left:15.0),
        child: Column(
  
          children: [
  
           
  
             Row(
  
               children: [
  
                     Row(
                       children: [
                           Text("Start"),
                        
                           TextButton(onPressed: _show, child:  Text('${ _selectedTime1 != null ? _selectedTime1 : moonLanding.hour.toString()+':'+ moonLanding.minute.toString()} H',style: TextStyle(color: Colors.black,fontSize: 9,)),),
                       ],
                       
                     ),
  
               Icon(
  
          Icons.arrow_right,
  
          size: 24.0,
  
          color: Color(0XFF97A3C3),
  
        ),
  
               ],
  
             ), 
  
              Row(
  
                children: [
 
                      Row(
                        
                        children: [
                          Text("Finish"),
                         
                          TextButton(
  
                              
  
          onPressed: _showdate, child:  Text('${ _selectedTime2 != null ? _selectedTime2 : (moonLanding.hour+1).toString()+':'+ moonLanding.minute.toString()} H',style: TextStyle(color: Colors.black,fontSize: 9,))),
                        ],
                      ),
  
                      
  
                Icon(
  
          Icons.arrow_right,
  
          size: 24.0,
  
          color: Color(0XFF97A3C3),
  
        ),
  
                ],
  
              ),
  
          ],
  
        ),
      ),),
                           ),
  
   
  
                         ],
  
                         
  
                       ),
                     ],
                   ),
  
                      Divider(
  
         height: 20,
  
        
  
              thickness: 1,
  
              indent: 50,
  
              endIndent: 20,
  
              color: Color(0XFFF1F1F5),
  
      ),
  
                   Padding(
  
                     padding: const EdgeInsets.only(top:70.0),
  
                     child: Container(
  
                       height: 50,
  
             
  
                        width: 300,
  
                       child: Material(
  
                
  
                  borderRadius: BorderRadius.circular(15),
  
          color :Color(0xFF2E3A59),
  
                child: MaterialButton(
  
              
  
                            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
  
                            minWidth: MediaQuery.of(context).size.width,
  
                            onPressed: () {
  
                        Navigator.push(
  
                          context,
  
                          MaterialPageRoute(builder: (context) => ChoisirRessources()),
  
                        );
  
                  },
  
                            child: Text("Recherche Et  Selectionner",
  
                            textAlign : TextAlign.center,
  
                            style: TextStyle(color: Colors.white,
  
                            fontWeight: FontWeight.bold,
  
                            
  
                            ),
  
                            
  
                            ),
  
                          ),
  
              ),
  
                     ),
  
                   ),
  
                   
  
                 ],
  
              ),
  
            ),
  
                ],
  
              ),
  
              elevation: 0,
  
              margin: EdgeInsets.all(20),
  
              
  
            ),
  
          ),
  
        
  
  
  
    ],
  
    
  
   
  
  ),
)
      
    );
  }
}