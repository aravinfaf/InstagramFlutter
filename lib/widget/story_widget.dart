import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    {"images": 'assets/images/instagram.png', "username": "Insta"},
    {"images": 'assets/images/whatsapp.png', "username": "Wp"},
    {"images": 'assets/images/facebook.png', "username": "Fb"},
    {"images": 'assets/images/instagram.png', "username": "Insta"},
    {"images": 'assets/images/whatsapp.png', "username": "Wp"},
    {"images": 'assets/images/facebook.png', "username": "Fb"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(story.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 67,
                          height: 67,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [Color(0X9B2282FF), Color(0XFFEEA863)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Container(
                            width: 67,
                            height: 67,
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "${story[index]["images"]}")),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${story[index]["username"]}",
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
        ),
      ),
    ]);
  }
}
