import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.all(4),
                child: new Image.asset('assets/vid1.jpg'),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('What does Schmutzdecke mean? How often should we perform a filter scrape? Watch expert Indigenous Water Treatment Operator Warren Brown to find out!')),
              ),
            ],
          ), //1
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Coming soon! Life hacks with Warren! Watch to find out how to make a homemade water filter.')),
              ),
            ],
          ), //2
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Warren gives us important tips and tricks to get the most accurate chlorine residual test!')),
              ),
            ],
          ), //3
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Coming soon! What is the single best way to upkeep valves? Catch Warren to find out!')),
              ),
            ],
          ), //4
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('What are three important identifications to have on a fire hydrant? Watch to find out!')),
              ),
            ],
          ), //5
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Find out how you can clear your intakes without using treated water! Expert water operator Warren Brown, shares with us his knowledge and experience on Backwash Tanks. ')),
              ),
            ],
          ), //6
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('What does food safe grease have to do with maintaining Fire Hydrants? Watch expert operator Warren Brown to find out!')),
              ),
            ],
          ), //7
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Knowledge is Power... literally! Follow Warren as he gives us an inside look into PLCs and teaches us simple troubleshooting techniques.')),
              ),
            ],
          ), //8
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
                    child:Icon(Icons.chat_bubble_outline),
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
                child: const Center(child: Text('Coming soon! How can you preserve the strength of chlorine during the disinfection process? Watch Wednesday to find out!')),
              ),
            ],
          ), //9
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
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
        child: Text("Youth stuffs here."),
      ),
    );
  }
}

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("About here."),
      ),
    );
  }
}
