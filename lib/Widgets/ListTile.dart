import 'package:flutter/material.dart';


Widget listTile(String username, String content, String avatarUrl, IconData icon){

  return ListTile(
    contentPadding: EdgeInsets.only(bottom: 10, right:8),
    leading: Stack(
      children: [
        Container(
            height: 75,
            width: 75 ,
            margin: EdgeInsets.only(right:15.0),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              
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
    title: Text(username, style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
    subtitle: Text(content, style: TextStyle(fontSize: 15.0,color: Colors.black54)),
    trailing: Icon(icon,size: 20,color: Colors.black,),
  );
}