import 'package:flutter/material.dart';
import 'package:whatsappclone/models/model.dart';

class chatsTab extends StatefulWidget {
  @override
  _chatsTabState createState() => _chatsTabState();
}

class _chatsTabState extends State<chatsTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 27.0,
                backgroundImage: NetworkImage(dummyData[index].avatarURL),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[index].name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    dummyData[index].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 7.0),
                    child: Text(
                      dummyData[index].message,
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).accentColor,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
      itemCount: dummyData.length,
    );
  }
}
