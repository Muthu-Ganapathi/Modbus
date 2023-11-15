import 'package:flutter/material.dart';

InputDecoration customDecoration(String lable, {bool showLabel=true,bool enterShow=true, bool dropDown=false,bool your=false, Color? borderColor}) {

  // String 
  return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            labelText:showLabel == false?null: lable,
            labelStyle: STYLE_REG_16,
      focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? PRIMARY_COLOR),
        borderRadius: BorderRadius.circular(10)
      ),
      border:  OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? BLACK_11),
        borderRadius: BorderRadius.circular(10)
      ),
      errorBorder:
           OutlineInputBorder(borderSide: const BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(10)),
      focusedErrorBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color:borderColor?? Colors.red),
        borderRadius: BorderRadius.circular(10)
      ),
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: borderColor??BLACK_11),
        borderRadius: BorderRadius.circular(10)
      ),
      hintText: "${showLabel?"":enterShow?"Enter ${your?"your":""} ":dropDown?"Select a ":"" }$lable",
      hintStyle:STYLE_REG_16);
}

const Color BLACK_11=Color(0xFFA9A9A9);
const Color PRIMARY_COLOR= Color(0xFF043c74);
const TextStyle STYLE_REG_16=  TextStyle(
    color: BLACK_11,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    
  );
   const TextStyle STYLE_SEMI_14=  TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    
  );