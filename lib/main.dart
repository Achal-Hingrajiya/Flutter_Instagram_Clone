import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram-UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildPostWidget() {
    return Container(
      height: 600.0,
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 15.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/60/60",
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "googleindia",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sponsored",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
              ],
            ),
          ),
          Container(
            height: 400.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/1080/720"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_rounded,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_sharp,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline_rounded,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 7.0),
                      child: Text(
                        "3,426 likes",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      "We've gotchu\nGoogle is there to protect you from allkinds of bad actors\non the internet to keep you safe. #SaferWithGogle.",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "View all 44 comments",
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _generateRandomPosts() {
    return List<Widget>.generate(10, (index) => _buildPostWidget());
  }

  Widget _buildStoryWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 2, right: 2),
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/70/70",
              ),
              radius: 35,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Add Story",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _generateRandomstories() {
    return List.generate(20, (index) => _buildStoryWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 120.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 10, bottom: 8, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Stories",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "Watch All",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: _generateRandomstories(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
              ],
            ),
            Column(
              children: _generateRandomPosts(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black45,
        ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_outlined,
            ),
            label: "reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
