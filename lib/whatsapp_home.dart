import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/calls.dart';
import 'package:whatsappclone/screens/camera.dart';
import 'package:whatsappclone/screens/chats.dart';
import 'package:whatsappclone/screens/status.dart';

class WhatsAppHome extends StatefulWidget {
//  var cameras;
//  WhatsAppHome(this.cameras);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WhatsAppHome();
  }
}

class _WhatsAppHome extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.9,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Text("CHATS"),
            Text("STATUS"),
            Text("CALLS"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
          child: TabBarView(
        controller: _tabController,
        children: <Widget>[cameraTab(), chatsTab(), statusTab(), callsTab()],
      )),
    );
  }
}
