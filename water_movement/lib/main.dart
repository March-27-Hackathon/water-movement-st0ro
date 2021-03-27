import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String title = "Water Movement";

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
          primarySwatch: Colors.cyan,
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 50.0,
            child: new TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  text: "ASK",
                ),
                Tab(
                  text: "LESSONS",
                ),
                Tab(
                  text: "SPOTLIGHTS",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Text("TAB ONE CONTENT"),
            Text("TAB TWO CONTENT"),
            Text("TAB THREE CONTENT"),
          ],
        ),
      ),
    );
  }
}

class VideoTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Videos here."),
      ),
    );
  }
  
}

class YouthTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Youth stuffs here."),
      ),
    );
  }

}

class AboutTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("About here."),
      ),
    );
  }

}