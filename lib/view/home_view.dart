/*import 'package:first/widget/categories_listview.dart';
import 'package:flutter/material.dart'; //{chatgpt}
import 'package:first/widget/Newslistviewbuilder.dart';
/*الشاشة الرئيسية للتطبيق.
فيها AppBar مكتوب فيه "Newes Cloud".
(body)→ بتعرض التصنيفات أفقياً. CategoriesListview عباره عن 
NewsListViewBuilder(category: 'world') →"world" بيعرض الأخبار الخاصة بالـ .*/

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Newes',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
        ]),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListview(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            NewsListViewBuilder(category: 'world'),
          ],
        ),
      ),
    );
  }
}*/

// tharwat
import 'package:first/widget/Newslistviewbuilder.dart';
import 'package:first/widget/categories_listview.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
