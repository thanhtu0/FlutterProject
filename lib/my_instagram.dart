import 'package:flutter/material.dart';
import 'package:helloworld/posts/post1.dart';
import 'package:helloworld/posts/post2.dart';


class MyInstagram extends StatelessWidget {
  const MyInstagram({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                "Instagram",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500,
                ),
              ),
              PopupMenuButton<int>(
                icon: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Điều chỉnh độ cong của góc
                ),
                padding: EdgeInsets.all(5),
                offset: Offset(-100, 46),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                  PopupMenuItem<int>(
                    value: 0,
                    child: Row(
                      children: [
                        Text('Đang theo dõi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900
                        )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.supervisor_account_rounded,
                              color: Colors.white,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Row(
                      children: [
                        Text('Yêu thích',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w900
                        ),),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star_border,
                              color: Colors.white,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                onSelected: (int value) {
                  if (value == 0) {
                    // Xử lý khi chọn Thư mục 1
                  } else if (value == 1) {
                    // Xử lý khi chọn Thư mục 2
                  }
                },
              )
            ],
          ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/messenger.png",
              height: 24,
              width: 24,
            ),
          ),
        ],
        ),
        body: SingleChildScrollView(
        child: Column(
            children: [
              //Stories
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        // List story
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white10,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage("assets/images/profile-user.png"),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: 15,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue, // Màu nền xanh
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 5.0,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        // Xử lý sự kiện khi biểu tượng "Add" được nhấn
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 24,
                                        color: Colors.white, // Màu biểu tượng trắng
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Tin của bạn",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/luu_diec_phi.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "yifei_cc",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/messi.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "leomessi",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/marvel.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "marvel",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/otamendi.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "otamendi30",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/neymar.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "neymarjr",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/rashford.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 140,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "marcusrasford",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/manchester_united.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 140,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "manchesterunited",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white70,
                                  width: 2.0,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage("assets/images/bruno_fernandes.jpg"),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 175,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "brunofernandes8",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 18, // Điều chỉnh kích thước của dấu tích xanh
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //Posts
              Column(
                children: [
                  Post1(),
                  Post2(),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16.0,
        unselectedFontSize: 16.0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
            size: 32,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            size: 32,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,
            size: 32,),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/video.png"),
              size: 32,
            ),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,
              size: 32,),
            label: 'Profile',
          ),
        ],
      )
    );
  }
}
