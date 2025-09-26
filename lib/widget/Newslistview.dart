/*import 'package:first/model/articalModel.dart';
import 'package:first/widget/NewsTile.dart';
import 'package:flutter/material.dart';

/*List.ويدجت بتعرض الأخبار على شكل 
 Newstile. كل عنصر (مقال) بيتعرض باستخدام ويدجت */

class Newslistview extends StatelessWidget {
  final List<Articalmodel> articals; //تعديل
  const Newslistview({
    super.key,
    required this.articals,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      //CustomScrollView لبناء الودجيت الموجوده علي الشاشه فقط مع

      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) {
          //Padding كل عنصر هيتبني هيتلف بـ
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
// Newstile هنا بمرر المقالاللي في مكانهالمناسب للـ
            child: NewsTile(
              articalmodel: articals[index],
            ),
          );
        },
      ),
    );
  }
}*/
// شرحي انا يعني الصفحه دي بيكون فيها الاخبار الي هتتعرض من الانترنت
// علي شكل ليست وبتاخد الاستايل بتاعها من صفحه
// newstile

//tharwat

import 'package:first/model/ArticalModel.dart';
import 'package:first/widget/NewsTile.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
