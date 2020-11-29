import 'package:app/Widgets/ListTile.dart';
import 'package:app/Widgets/StoryWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Messanger",
    color: Colors.white,
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> storyUrl = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQblgr0Cd43EvEk9hV-ZAm692LbVo54B8XRheSvP6RgdjQd1tWYexd0se-ytZJMpgWurddJep8JQvztUNzHfqkDzQ7Pe9APmNo&usqp=CAU&ec=45732304","https://www.katia.com/files/mod/6139/pattern-knit-crochet-man-scarf-autumn-winter-katia-6139-11-g.jpg","https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500","https://media.istockphoto.com/photos/confident-businessman-posing-in-the-office-picture-id891418990?k=6&m=891418990&s=612x612&w=0&h=BItvQKG0Wf4Ht3XHPxa2LV0WkCtNjhBjkQv28Dhq2pA=",
  "https://www.sei.org/wp-content/uploads/2017/12/mans-nilsson-full.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Chats",style: TextStyle(color: Colors.black,fontSize: 28.0,fontWeight: FontWeight.bold),),
        leading: Container(
          padding: EdgeInsets.only(top:3,left:16,bottom:3),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1592009309602-1dde752490ae?ixlib=rb-1.2.1&w=1000&q=80"),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: IconButton(icon: Icon(Icons.photo_camera,size: 22,
            color: Colors.black,
            ), onPressed: (){}),
          ),
          SizedBox(width:16),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: IconButton(icon: Icon(Icons.edit,size: 22,
              color: Colors.black,
              ), onPressed: (){}),
            ),
          )
        ],
      ),
      body: Column(
        children:[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(top:4,left:16,bottom:4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search,color: Colors.black,size: 25,),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black)
                ),
              ),
            ),
          ),
          SizedBox(height:10.0),
          Padding(
            padding: EdgeInsets.only(left:16.0,right:16.0),
            child: Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyCircle("Ahmed Ashfaq", storyUrl[0]),
                  storyCircle("Hassan", storyUrl[1]),
                  storyCircle("Zuhad Zahid", storyUrl[2]),
                  storyCircle("Bilal Siddq", storyUrl[3]),
                  storyCircle("Awan raza", storyUrl[4]),
                  storyCircle("Ali", storyUrl[5]),
                ],
              ),
            ),
          ),
          SizedBox(height:25.0),
          Padding(
            padding: EdgeInsets.only(left:16.0,right:16.0),
            child: Container(
              width: double.infinity,
              height:400,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  listTile("Ahmed Ashfaq", "This message was deleted", storyUrl[0], Icons.check_circle),
                  listTile("Hassan", "How are ?", storyUrl[1], Icons.check_circle),
                  listTile("Zuhad Zahid", "This is the messanger App", storyUrl[2], Icons.check_circle),
                  listTile("Bilal Siddq", "Can i Call you ?", storyUrl[3], Icons.check_circle),
                  listTile("Awan raza", "Dont' do this.", storyUrl[4], Icons.check_circle),
                  listTile("Ali", "This message was deleted", storyUrl[5], Icons.check_circle),
                  listTile("Ahmed Ashfaq", "This message was deleted", storyUrl[0], Icons.check_circle),
                  listTile("Hassan", "How are ?", storyUrl[1], Icons.check_circle),
                  listTile("Zuhad Zahid", "This is the messanger App", storyUrl[2], Icons.check_circle),
                  listTile("Bilal Siddq", "Can i Call you ?", storyUrl[3], Icons.check_circle),
                  listTile("Awan raza", "Can i Call you ?", storyUrl[4], Icons.check_circle),
                  listTile("Ali", "Dont' do this.", storyUrl[5], Icons.check_circle),
                  listTile("Ahmed Ashfaq", "This message was deleted", storyUrl[0], Icons.check_circle),
                ],
              ),
            ),
          ),
        ]
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        padding: EdgeInsets.only(left:80.0, right:80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: Icon(Icons.chat_rounded,color: Colors.black,size: 30,),
                    onPressed: (){},
                  ),
                ),
                Positioned(
                  child: Container(
                    height:21 ,
                    width: 21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.5)),
                        color: Colors.red,
                        border: Border.all(color: Colors.white, width: 3)
                    ),
                    child: Center(
                      child: Text("2", style: TextStyle(fontFamily: "Roboto", fontSize: 12, color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                  top: 0,
                  right: 0,
                ) 
              ],
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Icon(Icons.people_alt_rounded,color: Colors.black,size: 30,),
                onPressed: (){},
              ),
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Icon(Icons.navigation_rounded,color: Colors.black,size: 30,),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
