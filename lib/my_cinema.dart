import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCinema extends StatelessWidget {
  MyCinema({Key? key}) : super(key: key);

  int activeIndex = 0;
  final urlImages = [
    'assets/images/marvel1.jpg',
    'assets/images/marvel2.jpg',
    'assets/images/marvel3.jpg',
    'assets/images/marvel4.jpg',
    'assets/images/marvel5.jpg',
    'assets/images/marvel6.jpg',
    'assets/images/marvel7.jpg',
    'assets/images/marvel8.jpg',
    'assets/images/marvel9.jpg',
    'assets/images/marvel10.jpg',
    'assets/images/marvel11.jpg',
    'assets/images/marvel12.jpg',

  ];
  final titles = [
    'Captain America – The First Avenger (2011)',
    'Iron Man (2008)',
    'The Incredible Hulk (2008)',
    'Iron Man 2 (2010)',
    'Thor (2011)',
    'The Avengers (2012)',
    'Iron Man 3 (2013)',
    'Thor 2 (2013)',
    'Captain America (2014)',
    'The Guardian of the Galaxy (2014)',
    'Avengers 2 (2015)',
    'Ant-Man(2015)',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text(
              'Marvel Films',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 12), // Khoảng cách giữa tiêu đề và thanh tìm kiếm
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Tìm kiếm phim...',
                    filled: true,
                    fillColor: Colors.white10,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25), // Góc tròn
                      borderSide: BorderSide.none, // Loại bỏ đường viền
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25), // Góc tròn
                      borderSide: BorderSide.none, // Loại bỏ đường viền
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12), // Khoảng cách bên trong TextField
                    prefixIcon: Icon(Icons.search), // Icon tìm kiếm
                  ),
                  onSubmitted: (value) {
                    // Xử lý tìm kiếm khi người dùng nhấn Enter trên bàn phím
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Text(
              'Thứ tự phim marvel nên xem',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 500,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 1,
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                final title = titles[index]; // Lấy tên phim tương ứng
                return Column(
                  children: [
                    buildImage(urlImage, index),
                    SizedBox(height: 10), // Khoảng cách giữa ảnh và tên phim
                    Text(
                      title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),

    );
  }
  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    width: double.infinity,
    child: Image.asset(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}

