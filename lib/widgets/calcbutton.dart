import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
 final String text;
 final int textColor;
 final double textSize;
 final int fillColor;
 final int fillColor1;
final Function callback;

  const CalcButton({
    Key? key,
     required this.text,
     this.textColor = 0xff123456,
     this.textSize = 23, 
     this.fillColor = 0xFFECEFF1, 
     this.fillColor1 = 0xff00C853, 
     required this.callback,
     })
   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
          child: TextButton(
          
        child: Text(
        text, 
        style: GoogleFonts.rubik(
         textStyle: TextStyle(
          color: Color(textColor),
          fontSize: textSize))
          ),
        
        onPressed: () {
          callback(text);
          },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          backgroundColor: MaterialStateProperty.all<Color>(Color(fillColor)),
          shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
        ),
      )),
    );
  }
}
