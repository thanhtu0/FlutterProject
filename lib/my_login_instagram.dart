import 'package:flutter/material.dart';

class MyLoginInsta extends StatefulWidget {
  const MyLoginInsta({super.key});

  @override
  State<MyLoginInsta> createState() => _MyLoginInstaState();
}

class _MyLoginInstaState extends State<MyLoginInsta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Text(
                "Instagram",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Billabong",
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Số điện thoại, tên người dùng hoặc email",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 16
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Mật khẩu",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  suffixIcon: InkWell(
                    onTap: () {
                      // Đặt sự kiện khi nhấn vào biểu tượng mắt ở đây
                    },
                    child: Icon(
                      Icons.visibility,
                      color: Colors.white60,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Đặt về phía bên phải
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10), // Thêm margin bên phải 10
                  child: TextButton(
                    onPressed: () {
                      // Đặt sự kiện khi nhấn vào "Quên mật khẩu" ở đây
                    },
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 380,
              height: 40,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.white12),
                    ),
                  ),
                  child: Text("Đăng nhập", style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'HOẶC',
              style: TextStyle(
                  color: Colors.white38,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 32,
                ),
                SizedBox(width: 5),
                Text(
                  'Tiếp tục dưới tên Tú Thanh',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bạn chưa có tài khoản ư? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                "Đăng ký",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
