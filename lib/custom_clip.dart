import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height); // Điểm bắt đầu ở góc trái dưới
    path.quadraticBezierTo(size.width / 4, size.height * 0.8, size.width / 2,
        size.height * 0.9); // Đường uốn lượn
    path.quadraticBezierTo(3 * size.width / 4, size.height, size.width,
        size.height * 0.8); // Đường đến góc phải dưới
    path.lineTo(size.width, 0.0); // Đường lên đến góc phải trên
    path.close(); // Kết thúc đường dẫn

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
