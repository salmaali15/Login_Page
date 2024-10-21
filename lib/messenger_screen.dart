import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatefulWidget {
  @override
  _MessangerScreen createState() => _MessangerScreen();
}
class _MessangerScreen extends State<MessangerScreen> {
  GlobalKey<ScaffoldState> ScafoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/spider.jpeg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Slma Tmaer",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.settings,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Chats"),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 15,
                child: Icon(
                  size: 20,
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxHeight: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search,
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 115.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return buildStory();
                  },
                  separatorBuilder: (context,index) => SizedBox(
                    width: 5.0,
                  ),
                  itemCount: 15,
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index) => buildChat(),
                  separatorBuilder: (context,index) => SizedBox(
                    height: 5.0,
                  ),
                  itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildChat() => Row(
    children: [
      Container(
        width: 100,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/spider.jpeg"),
                  radius: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 3.0,
                      left: 50.0
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Salma Tamer",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "how are you today? I'm waiting for you",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CircleAvatar(
                    radius: 2.0,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text(
                  "8:06pm",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStory() => Row(
    children: [
      Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/spider.jpeg"),
                radius: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 60.0,
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 30,
                    maxWidth: 100,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Post a Note",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 3.0,
                    left: 50.0
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 7.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("Yor Note",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      Container(
        width: 100,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/spider.jpeg"),
                  radius: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 3.0,
                      left: 50.0
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text("Salma Tamer Ahmed",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      Container(
        width: 100,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/spider.jpeg"),
                  radius: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 3.0,
                      left: 50.0
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 7.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text("Salma Tamer Ahmed",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ],
  );

}



