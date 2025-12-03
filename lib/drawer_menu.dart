import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer & Pop up"),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Profile"))),
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Settings"))),
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Linked Device"))),
              PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Notifications"))),
              PopupMenuItem(child: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Logout"))),
            ];
          },)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
                color: Colors.blue,
                child: Center(child: DrawerHeader(child: Text("My App Drawer")))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: 
        Column(
          children: [
            Text("Click on 3 lines to open drawer menu"),
            Text("click on 3 dots to open pop up menu"),
          ],
        ),),
    );
  }
}
