import 'package:flutter/material.dart';
import 'package:calc_app_/widgets/calcbutton.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget>[
          Container(
             padding: EdgeInsets.only(right : 12),
             child: Text(
               '123*123',
               style: GoogleFonts.rubik(
                 textStyle: TextStyle(
                   fontSize: 22, color: Colors.black54
                )
               )
              ), 
              alignment: Alignment.centerRight,
             ),
           Container(
             padding: EdgeInsets.all(12),
             child: Text(
               '123',
               style: GoogleFonts.rubik(
                 textStyle: TextStyle(
                   fontSize: 48
                )
               )
              ), 
              alignment: Alignment.centerRight,
             ),
             SizedBox(height: 80),
             Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              CalcButton(
                text: 'C',
                textColor: 0xFFD50000, 
                ),
               CalcButton(
                text: '( )',
                textColor: 0xff00C853
                ),
                CalcButton(
                text: '%',
                textColor: 0xff00C853
                ),
                CalcButton(
                text: '/',
                textColor: 0xff00C853
                ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '7',
              ),
             CalcButton(
              text: '8'
              ),
              CalcButton(
              text: '9'
              ),
              CalcButton(
              text: 'X',
              textColor: 0xff00C853
              ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '4',
              ),
             CalcButton(
              text: '5'
              ),
              CalcButton(
              text: '6'
              ),
              CalcButton(
              text: '-',
              textColor: 0xff00C853
              ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '1',
              ),
             CalcButton(
              text: '2'
              ),
              CalcButton(
              text: '3'
              ),
              CalcButton(
              text: '+',
              textColor: 0xff00C853
              ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            CalcButton(
              text: '+/-',
              textSize: 20,
              ),
             CalcButton(
              text: '0'
              ),
              CalcButton(
              text: '.'
              ),
              CalcButton(
              text: '=',
              textSize: 30, 
              fillColor: 0xff00C853,
              ), 
          ],
        ),
        
        ]
        ),

      );
  }}