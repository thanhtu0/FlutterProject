import 'package:flutter/material.dart';

class MyCinema extends StatelessWidget {
  const MyCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.lightGreen,
                  Colors.greenAccent,
                  Colors.lightGreenAccent,
                ]
            ),
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
          "Hôm nay ta xem gì nào ???",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
       body: ListView(
         scrollDirection: Axis.horizontal,
         children: [
           Image(
             width: 450,
             height: 300,
             image: AssetImage('assets/images/thu-tu-xem-phim-marvel-1.jpg'),
           ),
           Image(
             width: 450,
             height: 300,
             image: AssetImage('assets/images/thu-tu-xem-phim-marvel-2.jpg'),
           ),
           Image(
             width: 450,
             height: 300,
             image: AssetImage('assets/images/thu-tu-xem-phim-marvel-3.jpg'),
           ),
           Image(
             width: 450,
             height: 300,
             image: AssetImage('assets/images/thu-tu-xem-phim-marvel-4.jpg'),
           ),
           Image(
             width: 450,
             height: 300,
             image: AssetImage('assets/images/thu-tu-xem-phim-marvel-5.jpg'),
           ),
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
    );
  }
}
