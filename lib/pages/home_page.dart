import 'package:flutter/material.dart';
import 'package:calc_app_/widgets/calcbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key,}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

String _history='';
String _expression='';

void numClick(String text)
{
  setState(() {
    _expression+=text;
  });
}

void allClear(String text)
{
  setState(() {
    _history ='';
    _expression= '';
  });
}

void evaluate(String text)
{
   Parser p = Parser();
  Expression exp = p.parse(_expression);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  setState(() {
    _history = _expression;
    _expression= eval.toString();
  });
}

  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget>[
          Container(
             padding: EdgeInsets.only(right : 12),
             child: Text(
               _expression,
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
               _expression,
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
                callback: allClear, 
                ),
               CalcButton(
                text: '( )',
                textColor: 0xff00C853, 
                callback: numClick,
                ),
                CalcButton(
                text: '%',
                textColor: 0xff00C853, 
                callback: numClick,
                ),
                CalcButton(
                text: '/',
                textColor: 0xff00C853, 
                callback: numClick,
                ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '7',
                callback: numClick,
              ),
             CalcButton(
              text: '8', 
                callback: numClick,
              ),
              CalcButton(
              text: '9', 
                callback: numClick,
              ),
              CalcButton(
              text: '*',
                callback: numClick,
              textColor: 0xff00C853
              ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '4',
                callback: numClick,
              ),
             CalcButton(
              text: '5', 
                callback: numClick,
              ),
              CalcButton(
              text: '6', 
                callback: numClick,
              ),
              CalcButton(
              text: '-',
              textColor: 0xff00C853, 
                callback: numClick,
              ), 
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CalcButton(
              text: '1',
                callback: numClick,
              ),
             CalcButton(
              text: '2', 
                callback: numClick,
              ),
              CalcButton(
              text: '3', 
                callback: numClick,
              ),
              CalcButton(
              text: '+',
                callback: numClick,
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
                callback: numClick,
              ),
             CalcButton(
              text: '0', 
                callback: numClick,
              ),
              CalcButton(
              text: '.', 
                callback: numClick,
              ),
              CalcButton(
              text: '=',
              textSize: 30, 
              fillColor: 0xff00C853,
                callback: evaluate,
              ), 
          ],
        ),
        
        ]
        ),

      );
  }}