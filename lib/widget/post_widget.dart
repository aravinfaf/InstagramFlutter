import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage("assets/images/lady.jpg"))),
                ),
                title: Text("Aravind"),
                subtitle: Text("Kangeyam, Tirupur"),
                trailing: Icon(Icons.more_vert_sharp),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/aravind.jpg"))),
              ),
              ListTile(
                leading: Wrap(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    Icon(Icons.comment),
                    Icon(Icons.near_me_sharp),
                  ],
                ),
                trailing: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "10k Likes",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Liked by Prasad T, Arunkumar M",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                    child: Text(
                      "View all 77 comments",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: DecorationImage(
                          image: AssetImage("assets/images/lady.jpg"))),
                ),
                title: Text("Add a comment"),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Icon(Icons.add_circle_outline),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
