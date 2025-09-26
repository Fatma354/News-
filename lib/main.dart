//import 'package:first/widget/News1.dart';

import 'package:first/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
/*عرفتي كلاس screen1 اللي بيورّي أول شاشة.

MaterialApp → بيضبط إعدادات التطبيق.

debugShowCheckedModeBanner: false → بيشيل لوجو debug.

Scaffold → بيعمل هيكل للشاشة.

HomeView() → ده الجسم (body) اللي هيظهر جوه الشاشة.*/









/* Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(), // لا تحطي Scaffold هنا لأن HomeView يحتوي Scaffold
    );
  }
}*/