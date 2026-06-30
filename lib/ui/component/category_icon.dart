  //====== Categary ======
  import 'package:flutter/material.dart';

Widget categoryIon(String icon,BuildContext context){
    return Container(
  width: 65,
  height: 65,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).primaryColor.withOpacity(0.7),
      ],
    ),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        blurRadius: 20,
        offset: const Offset(0, 8),
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ImageIcon(
      NetworkImage(icon),
      color: Colors.white,
      size: 30,
    ),
  ),
);
  }