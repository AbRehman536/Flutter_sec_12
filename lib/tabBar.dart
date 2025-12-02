import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    isScrollable: true,
                    tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.person), text: "Profile",),
                ]),
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Image.asset("assets/images/Frame.png"),
            Text("Home"),
            Icon(Icons.home),
          ],),),
          Center(child: Column(children: [
            Image.asset("assets/images/Frame2.png"),
            TextField(decoration: InputDecoration(
              hint: Text("Search")
            ),),
            Icon(Icons.settings_input_antenna),
          ],),),
          Center(child: Column(children: [
            Image.asset("assets/images/Frame3.png"),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Abdullah Rehman"),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Update Profile"))
          ],),),
        ]),
      ),
    );
  }
}
