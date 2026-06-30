import 'package:flutter/material.dart';

PreferredSize appBar(){
  return PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            toolbarHeight: 100.0,
            title: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffe6f3ed),
                  child: Icon(Icons.location_on,color: Color(0xff036d29),),
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("273,Mr.Spider",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Komprov.Pnov1.Preyveng",style: TextStyle(fontSize: 12,color: Color(0xff303131)),)
                  ],
                ),
                SizedBox(width: 120,),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  foregroundImage: NetworkImage('https://i.pinimg.com/1200x/b6/02/55/b60255fca2c2e4323f56ff60442d6b36.jpg'),
                )
              ],
            ),
          ),
        ),
      );
}