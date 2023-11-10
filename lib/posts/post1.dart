import 'package:flutter/material.dart';

class Post1 extends StatefulWidget {
  const Post1({super.key});

  @override
  State<Post1> createState() => _Post1State();
}

class _Post1State extends State<Post1> {
  List<String> images = [
    "assets/images/messi_1.jpg",
    "assets/images/messi_2.jpg",
    "assets/images/messi_3.jpg",
    "assets/images/messi_4.jpg",
    "assets/images/messi_5.jpg"
  ];

  ScrollController controller = ScrollController(initialScrollOffset: 0.0);
  int curIndex = 0;

  @override
  void initState(){
    super.initState();

    controller.addListener(() {
      var index = (controller.offset / 400).round();

      if (index != curIndex) {
        setState(() {
          curIndex = index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 20, // Image radius
                    backgroundImage: AssetImage("assets/images/messi.jpg"),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "leomessi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Colors.blue, // Màu xanh
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 610,
              child: ListView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 600,
                          child: Image(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill,
                          ),
                        )
                      ]
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white70,
                        size: 30,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: ClipOval(
                        child: Image.asset(
                          "assets/images/comment.png",
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: ClipOval(
                        child: Image.asset(
                          "assets/images/send.png",
                          height: 26,
                          width: 26,
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.map((image) {
                          int index = images.indexOf(image);
                          return Container(
                              width: 5,
                              height: 5,
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == curIndex ? Colors.blue : Colors.grey
                              )
                          );
                        }).toList(),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border,
                          color: Colors.white70,
                          size: 32,)
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '7.950.999 lượt thích',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                        ),
                      ),
                      const Text(
                        'Otra victoria importante en Lima para seguir sumando juntos. Vamos!!!',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.black
                                    ),
                                    child: const Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text('Bình luận',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                        SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(12.0),
                                                    child: CircleAvatar(
                                                      radius: 16,
                                                      backgroundImage: AssetImage('assets/images/otamendi.jpg'),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'otamendi',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.white)
                                                            ,),
                                                          Text(
                                                            '. 2h',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.blueGrey)
                                                            ,)
                                                        ],
                                                      ),
                                                      Row(
                                                          children: [
                                                            Text(
                                                              'Love so much ',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white,
                                                              )
                                                            ),
                                                          ]
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(12.0),
                                                    child: CircleAvatar(
                                                      radius: 16,
                                                      backgroundImage: AssetImage('assets/images/duong_qua.jpg'),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'duongqua',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.white,)
                                                            ,),
                                                          Text(
                                                            '. 2h',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.blueGrey)
                                                            ,)
                                                        ],
                                                      ),
                                                      Row(
                                                          children: [
                                                            Text(
                                                              'Cung hảo Cung hảo',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white,
                                                              ),
                                                              textAlign: TextAlign.left
                                                              ,),
                                                          ]
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(12.0),
                                                    child: CircleAvatar(
                                                      radius: 16,
                                                      backgroundImage: AssetImage('assets/images/rashford.jpg'),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'marcusrashford',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.white)
                                                            ,),
                                                          Text(
                                                            '. 4h',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.blueGrey)
                                                            ,)
                                                        ],
                                                      ),
                                                      Row(
                                                          children: [
                                                            Text(
                                                              'Congratulion!!!',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white,
                                                              )),
                                                          ]
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(12.0),
                                                    child: CircleAvatar(
                                                      radius: 16,
                                                      backgroundImage: AssetImage('assets/images/neymar.jpg'),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'neymarjr',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.white)
                                                            ,),
                                                          Text(
                                                            '. 30m',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.blueGrey)
                                                            ,)
                                                        ],
                                                      ),
                                                      Row(
                                                          children: [
                                                            Text(
                                                              'Love my bro',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.white,
                                                              ),
                                                              textAlign: TextAlign.left
                                                              ,),
                                                          ]
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: const Text('Xem tất cả 75.674 bình luận', style: TextStyle(fontSize: 16,fontFamily: 'Roboto', color: Colors.grey))),
                      Text('4 giờ trước', style: TextStyle(fontSize: 14,fontFamily: 'Roboto', color: Colors.grey),),
                    ],
                  ),
                )
              ],
            )
          ]
      ),
    );
  }
}