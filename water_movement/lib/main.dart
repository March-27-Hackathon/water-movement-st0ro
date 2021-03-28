import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(WaterMovement());

class WaterMovement extends StatefulWidget {
  @override
  _WaterMovementPage createState() => _WaterMovementPage();
}

class _WaterMovementPage extends State<WaterMovement>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String title = "Video Library";

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: new Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
          ),
          body: TabBarView(
            children: <Widget>[
              VideoTab(),
              ForumTab(),
              YouthTab(),
              AboutTab(),
            ],
            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
          ),
          bottomNavigationBar: Material(
            //color: Colors.black,
            child: TabBar(
              onTap: (index) {
                if (index == 0) {
                  setState(() {
                    title = "Video Library";
                  });
                } else if (index == 1) {
                  setState(() {
                    title = "Collaboration Zone";
                  });
                } else if (index == 2) {
                  setState(() {
                    title = "Youth";
                  });
                } else if (index == 3) {
                  setState(() {
                    title = "About";
                  });
                }
              },
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.video_collection),
                ),
                Tab(
                  icon: Icon(Icons.messenger),
                ),
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  icon: Icon(Icons.info_outline),
                ),
              ],
              controller: tabController,
            ),
          ),
        ));
  }
}

class ForumTab extends StatefulWidget {
  @override
  ForumTabState createState() => ForumTabState();
}

class ForumTabState extends State<ForumTab>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,

      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
                onPressed: (){},
          ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 50.0,
            child: new TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              tabs: [
                Tab(text: "ASK"),
                Tab(text: "LESSONS"),
                Tab(text: "SPOTLIGHTS"),
              ],
            ),
          ),
        ),

        body: TabBarView(
          children: [
            ListView(

              padding: const EdgeInsets.all(12),
              children: [

                Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof1.png", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Tejus Gangadharaiah',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("14 hours ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Farshad Sh',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("1 month ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof3.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'rajpreet.gill',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: "with \nbmalekia.",
                                ),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("1"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kenward13',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("1"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'saba.bhatti1',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("3 months ago"),
                        Text(
                            "This is an awesome page!! In terms of water\ntreatment, what are the most effective methods\nand is Calgary currently employing those methods\nor does it depend on different factors?"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'saba.bhatti3',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'rajpreet.gill',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("3 months ago"),
                        Text(
                            "This is indeed a very spectacular way to make a\nreal impact, thank you for setting this up. I had a\nquestion regarding water treatments; what are\nsome current methods that are being utilized\nin order to perform treatments on water? As well,\nwhat do these treatments look like?  What are\nsome of the materials that are being used for\ntreatments in water? \nThank you!"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'bmalekia',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " changed the group description ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Text(
                            "Being a water operator can be challenging, new\nissues arise everyday and we may not don't know\nall the answers. This space allows operators across\nCanada to connect, ask questions and share\nknowledge. "),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'bmalekia',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("3 months ago"),
                        Text(
                            "Welcome to the group! You can connect with other\nmembers, get updates and share photos."),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(12),
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof4.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Scott Quilty',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("9 days ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof3.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kenward13',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("1"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'saba.bhatti3',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'bmalekia',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " changed the group description ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Text(
                            "As Water Operators, everyday we learn something\nnew, encounter a unique problem and find better\nways of solving challenges. Share your lessons\nlearned with Indigenous Water Operators across\nCanada."),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'bmalekia',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("3 months ago"),
                        Text(
                            "Welcome to the group! You can connect with other\nmembers, get updates and share photos."),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(12),
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof3.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("2 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'saba.bhatti3',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " joined the group ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'kondwani.asefa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " joined the group.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal)),
                              ]),
                        ),
                        Text("3 months ago"),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'bmalekia',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " changed the group description ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ]),
                        ),
                        Text("3 months ago"),
                        Text(
                            "Water Operators are essential workers. Take a\nmoment to spotlight a water operator who excels\nin your community."),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset("assets/prof2.jpg", height: 50),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'bmalekia',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text("3 months ago"),
                        Text(
                            "Welcome to the group! You can connect with other\nmembers, get updates and share photos."),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Icon(Icons.chat_bubble_outline),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              child: Text("0"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VideoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Slow Sand Filtration & Filter Scrape',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: InkWell(
                  child: //padding: const EdgeInsets.all(4),
                    new Image.asset('assets/vid1.jpg'),
                    onTap: () => launch('https://www.youtube.com/watch?v=sR-j9J02Vgg&t=2s&ab_channel=WaterMovement')
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("6"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'What does Schmutzdecke mean? How often should we perform a filter scrape? Watch expert Indigenous Water Treatment Operator Warren Brown to find out!')),
              ),
            ],
          ), //1
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Homemade Water Filter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid2.png'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("14"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Coming soon! Life hacks with Warren! Watch to find out how to make a homemade water filter.')),
              ),
            ],
          ), //2
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Chlorine Residual Test',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid3.jpg'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("14"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Warren gives us important tips and tricks to get the most accurate chlorine residual test!')),
              ),
            ],
          ), //3
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Valve Exercising',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid4.png'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("3"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Coming soon! What is the single best way to upkeep valves? Catch Warren to find out!')),
              ),
            ],
          ), //4
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Identifying Fire Hydrants',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid5.jpg'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("3"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'What are three important identifications to have on a fire hydrant? Watch to find out!')),
              ),
            ],
          ), //5
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Backwashing',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid6.jpg'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("2"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("1"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Find out how you can clear your intakes without using treated water! Expert water operator Warren Brown, shares with us his knowledge and experience on Backwash Tanks. ')),
              ),
            ],
          ), //6
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Fire Hydrant Maintenance',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid7.jpg'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("5"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'What does food safe grease have to do with maintaining Fire Hydrants? Watch expert operator Warren Brown to find out!')),
              ),
            ],
          ), //7
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'PLCs and Water Treatment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid8.jpg'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("2"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Knowledge is Power... literally! Follow Warren as he gives us an inside look into PLCs and teaches us simple troubleshooting techniques.')),
              ),
            ],
          ), //8
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Chlorine Disinfection',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid9.png'),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.favorite_border),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("2"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("0"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Text("3"),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Center(
                    child: Text(
                        'Coming soon! How can you preserve the strength of chlorine during the disinfection process? Watch Wednesday to find out!')),
              ),
            ],
          ), //9
          const Divider(),
          Container(
            height: 50,
            child: const Center(child: Text('End of videos')),
          ),
        ],
      ),
    );
  }
}

class YouthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: ListView(padding: const EdgeInsets.all(12), children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Virtual Workshops',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: new Image.asset('assets/youthpic1.webp'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Free! Teachers book today!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Online workshop for students of all ages. Learn about water in Canada, careers in Engineering and the water sector and create your own edible water pods! Free experiment kit delivery to your Calgary school.',
              textAlign: TextAlign.center,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 10),
                  child: Text('Contact us')),
            ),
          )
        ]),
        const Divider(),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Virtual Lunch & Learn',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: new Image.asset('assets/youthpic2.webp'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Free! Teachers book today!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Careers in the water sector are growing more than ever. Do your students know what opportunities there are in the water industry? Sign up for a lunch and learn session with any of our Water Engineers.',
              textAlign: TextAlign.center,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 10),
                  child: Text('Contact us')),
            ),
          )
        ]),
        const Divider(),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Wastewater Treatment Plant Tour',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: new Image.asset('assets/youthpic3.webp'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'Check back at a later date',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              'We help facilitate and organize wastewater treatment plant tours. Currently, this program is on-hold due to COVID restrictions. Contact us to express your interest in a tour at a later date.',
              textAlign: TextAlign.center,
            )),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 10),
                  child: Text('Contact us')),
            ),
          )
        ]),
      ])),
    );
  }
}

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        //padding: const EdgeInsets.all(12),
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: new Image.asset('assets/About1_WaterBackground.webp',
                      width: 600),
                ),
                Column(
                  children: <Widget>[
                    Container(padding: const EdgeInsets.fromLTRB(8, 50, 8, 8)),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'WATER MOVEMENT',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Our Mission',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'To bridge the connection between Indigenous Water Operators.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Our Vision',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'To provide a collaborative online space where Indigenous Water Operators can connect, share lessons learned and access training videos.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Who we are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Water Movement is a non-for-profit venture under Engineers without Borders Calgary Professional Chapter. Our team of volunteers includes a unique mix of Industry Professionals and University Students.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      child: new Image.asset('assets/person1.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      child: new Image.asset('assets/person2.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      child: new Image.asset('assets/person3.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      child: new Image.asset('assets/person4.webp', height: 80),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Our core values are collaboration, sustainability and reliability.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    'Our Partners',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: new Image.asset('assets/partner1.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: new Image.asset('assets/partner2.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: new Image.asset('assets/partner3.webp', height: 80),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: new Image.asset('assets/partner4.webp', height: 80),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'BLUME CREATIVE AGENCY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'Videographer and editor for Water Movement Documentary',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'BEN GRAYZEL',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'Videographer for Video Learning Library',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'ODE TO LIGHT PHOTOGRAPY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'Videographer for Video Learning Library',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'RAWD ALMASOUD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              'Videographer and Editor for Video Learning Library',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(4, 20, 4, 4),
                child: Center(
                  child: Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: new InkWell(
                    child: new Text('watermovementyyc@gmail.com'),
                        onTap: () => launch('mailto:watermovementyyc@gmail.com')
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30,12, 30, 12),
                child: Center(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30,12, 30, 12),
                child: Center(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30,12, 30, 12),
                child: Center(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: 'Email*'),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30,12, 30, 12),
                child: Center(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: 'Subject'),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30,5, 30, 12),
                child: Center(
                  child: new TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(labelText: 'Leave us a message...',
                    ),
                    maxLines: 2
                  ),
                ),
              ),


              Container(padding: const EdgeInsets.fromLTRB(225, 10, 10, 10),
    child: RaisedButton(
    onPressed: () {},
    textColor: Colors.white,

    child: Container(
    padding: const EdgeInsets.all(15.0),
    child: const Text('Submit'),
    ),
    ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

