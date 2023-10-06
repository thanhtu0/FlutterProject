import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<String> popMenu = [
    "Search", "Add", "Input", "Edit"
  ];
  String urlImg = "https://images.unsplash.com/photo-1666913804414-930c2e87ded9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFzaGZvcmR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlue,
                Colors.lightGreen,
                Colors.lightBlueAccent,
              ]
            ),
            // borderRadius: BorderRadius.only(
            //   bottomLeft: Radius.circular(50),
            //   bottomRight: Radius.circular(50),
            // ),
          ),
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )
        ),
        // leading: Icon(
        //   Icons.home,
        // ),
        title: Text(
          "Vô địch C1 cùng De Gea",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(
                Icons.add
              )),
          IconButton(onPressed: (){},
              icon: Icon(
                Icons.search
              )),
          PopupMenuButton(
              itemBuilder: (context) {
                return popMenu.map((e) {
                  return PopupMenuItem(child: Text(e));
                }).toList();
              }
          )
        ],
      ),
      // backgroundColor: Colors.white70,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            "Hello every body!!!",
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dancing',
            ),
          ),
          Image(
            image: AssetImage("assets/images/bkg_desktop.jpg"),
          ),
          Text(
            "Tôi tên là Tú, xịn xò thật sự!!!",
            style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          Image(
            image: NetworkImage(urlImg),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.yellow,
                  Colors.orange,
                ]
              ),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.pinkAccent,
                    size: 30,
                  ),
                  onPressed: () {
                    print("Chào bạn, bạn đã đã nhấn vào nút home");
                    var snackbar = new SnackBar(
                        content: Text("Chào cậu, cậu khỏe chứ!")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.greenAccent,
                  size: 50,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.pinkAccent,
                  size: 30,
                ),
              ],
            ),
          )
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Access",
              icon: Icon(
                  Icons.book_outlined
              )
          ),
          BottomNavigationBarItem(
              label: "Account",
              icon: Icon(
                Icons.account_circle
              )
          ),
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add
        ),
      ),
      drawer: ListView(
        children: [
          DrawerHeader(
              child: Text("Hello"),
              decoration: BoxDecoration(
                color: Colors.limeAccent
              ),
          ),
          ListTile(
            title: Text("Hello"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
