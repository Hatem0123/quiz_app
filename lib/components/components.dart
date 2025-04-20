import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void Navigationito(context, Widget widget) =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));

Widget Custome_button({String? txt,void Function()? onPress})=> ElevatedButton(onPressed: onPress,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.cyanAccent
    ),
    child: Text(txt!,style:GoogleFonts.aboreto(
        color: Colors.black,
            fontWeight: FontWeight.bold
    ),textAlign: TextAlign.center,));

Widget Question_summry(List? summary){

    return
    
        SingleChildScrollView(
          child: Column(children: [
               ...summary!.map((data){
          // Text(((data['Question']as int)+1).toString()),
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${(data['Question']as int)+1  }',textAlign: TextAlign.center,style:GoogleFonts.aboreto(color: Colors.black,fontWeight:FontWeight.bold),),
                      Expanded(
                        child: Column(children: [
                            Text('${data['Q']}',textAlign: TextAlign.center),
                            SizedBox(height: 5,),
                            Text('${data['your_answer']}',textAlign: TextAlign.center),
          
                        ],),
                      )
                  ],
                  );
          
          
              }).toList(),
          
          ]
          
          ),
        );
}