/*import 'package:dio/dio.dart';
import 'package:first/model/articalModel.dart';
import 'package:first/services/Newsservis.dart';
import 'package:first/widget/Newslistview.dart';
import 'package:flutter/material.dart';

/*StatefulWidget مسؤولة عن جلب الأخبار.
عشان يجيب الأخبار.  Newsservis  بيستدعي  initState في 
FutureBuilder بيستخدم 
Newslistview لو فيه بيانات → يعرض 
لو فيه خطأ → يعرض رسالة.
لو لسه مستني → يعرض دائرة تحميل.
*/
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

//cached network imag باكدج لعرض الصور من الانترنت
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = Newsservis(Dio()).getNews(category: widget.category);
    // Newsservis(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articalmodel>>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return Newslistview(
              articals: Snapshot.data!,
            );
          } else if (Snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('oops there was error'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}*/

//tharwat
import 'package:dio/dio.dart';
import 'package:first/model/ArticalModel.dart';
import 'package:first/services/Newsservis.dart';
import 'package:first/widget/Newslistview.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}













/* if (AsyncSnapshot.hasData) {
            return Newslistview(
              articals: AsyncSnapshot.data!,
            );
          }*/