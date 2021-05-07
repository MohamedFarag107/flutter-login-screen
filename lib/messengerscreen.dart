import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
var Color1 = Colors.white;
// ignore: non_constant_identifier_names
var Color2 = Colors.black;

change() {
  if (Color1 == Colors.white) {
    Color1 = Colors.black;
    Color2 = Colors.white;
  } else {
    Color2 = Colors.black;
    Color1 = Colors.white;
  }
}

class Messenger extends StatefulWidget {
  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color1,
      appBar: AppBar(
        backgroundColor: Color1,
        elevation: 0,
        //image with dot
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Color2,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/75249651?s=400&u=113af56771d07e534b49b8b623b2d8e166329915&v=4'),

                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color1,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),


              ],
            ),
          ],
        ),
        //chats
        title: Text(
          'Chats',
          style: TextStyle(
            color: Color2,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color2,
            child: IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.blue,

              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 8,),
          CircleAvatar(
            radius: 20,
            backgroundColor: Color2,
            child: IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.blue,

              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 8,),
          CircleAvatar(
            radius: 20,
            backgroundColor: Color2,
            child: IconButton(
              icon: Icon(
                Icons.switch_left_sharp,
                color: Colors.blue,

              ),
              onPressed: () {
                setState(() {
                  change();
                });
              },
            ),
          ),
          SizedBox(width: 8,),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.only(left: 20,right: 20,top: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //search
              Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(
                      Icons.search,
                      color: Color2,
                    ),
                    SizedBox(width: 15,),
                    Text('Search',
                      style: TextStyle(
                        color: Color2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              //story
              Container(
                //constant height = height of image and text
                height: 85,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>StoryItem(),
                    separatorBuilder: (context,index)=>SizedBox(width: 10,),
                    itemCount: 10,
                ),
              ),
              SizedBox(height: 10,),
              //chats
              //expanded because we have fix height we want take them and scroll
              /*
                or wrap main column with SingleChildScrollView and
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              */
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                  itemBuilder: (context,index)=>ChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  itemCount: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
  /*
  1- build item
  2- build List
  3- add item to the list
  */
  // ignore: non_constant_identifier_names
  Widget StoryItem()=>Row(
    children: [
      Container(
        width: 65,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/75249651?s=400&u=113af56771d07e534b49b8b623b2d8e166329915&v=4'),

                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color1,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),


              ],
            ),
            Text('Mohamed Farag Mohamed Mahmoud Mohamed',
              style: TextStyle(
                color: Color2,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),

    ],
  );
  // ignore: non_constant_identifier_names
  Widget ChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/75249651?s=400&u=113af56771d07e534b49b8b623b2d8e166329915&v=4'),

          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Color1,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.blue,
              ),
            ],
          ),


        ],
      ),
      SizedBox(width: 7,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohamed Farag Mohamed Mahmoud Mohamed',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color2,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Mohamed Farag Mohamed Mahmoud Mohamed',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color2,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 5,),
                Text(
                    '02:20 PM',
                style: TextStyle(
                  color: Color2,
                ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );

}