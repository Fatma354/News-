/*import 'package:first/widget/Newslistviewbuilder.dart';
import 'package:flutter/material.dart';

/*شاشة بتعرض الأخبار الخاصة بتصنيف معين.
CustomScrollView بتستخدم 
و عشان تبني الأخبارNewsListViewBuilder وفيها*/
class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //ده كدا للربط بين الكاتوجري
          // والبيانات البادي الي تحت
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}*/
//tharwat
import 'package:first/widget/Newslistviewbuilder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
