import 'package:flutter/material.dart';
import 'package:insta_ui/widget/bottombar_widget.dart';
import 'package:insta_ui/widget/post_widget.dart';
import 'package:insta_ui/widget/story_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.grey[600],
          ),
          titleSpacing: 3,
          title: Text(
            "Instagram",
            style: TextStyle(
                fontFamily: "Billabong",
                fontSize: 30,
                decoration: TextDecoration.none),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/messanger.png"),
              iconSize: 5,
            )
          ],
        ),
        body: Column(
          children: [
            StoryWidget(),
            Divider(
              color: Colors.grey,
            ),
            Expanded(child: PostWidget())
          ],
        ),
        bottomNavigationBar: BottombarWidget());
  }
}
