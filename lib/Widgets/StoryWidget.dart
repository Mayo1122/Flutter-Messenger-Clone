import 'package:flutter/material.dart';


Widget storyCircle(String name, String avatarUrl){

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        children: [
          Container(
            height: 75,
            width: 75 ,
            margin: EdgeInsets.only(right:15.0),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(width:3,color:Colors.blue)
              
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
            ),
          ),
          Positioned(
            child: Container(
              height:18,
              width: 18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 3)
              ),
            ),
            bottom: 6,
            right: 15,
          )
        ],
      ),
      SizedBox(height:5.0),
      Text(name,style: TextStyle(color: Colors.black,fontSize: 15.0),)
    ],
  );


}