/*import 'package:dio/dio.dart';
import 'package:first/model/articalModel.dart';

class Newsservis {
  final Dio dio;

  Newsservis(this.dio);

  Future<List<Articalmodel>> getNews({required String category}) async {
    try {
      // await Future.delayed(const Duration(seconds: 5));
//هنا بيطلب بيانات من API (موقع newsdata.io)
      var response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_4a16e538436d463d85accabe44465381&language=ar&category=$category');
      //statusCode → كود الاستجابة (200 معناها نجاح).
      //print('Response status: ${response.statusCode}');
      //الـ JSON اللي راجع من السيرفر
      // print('Response data: ${response.data}');

//هنا بيحوّل الـ response.data (اللي جاي من الـ API) لـ خريطة Map علشان Dart يتعامل معاها.
      Map<String, dynamic> jsonData =
          Map<String, dynamic>.from(response.data); //<chat gpt>

      List<dynamic> articles = jsonData['articles'];

      List<Articalmodel> articalelist = [];
      for (var article in articles) {
        Articalmodel articalmodel = Articalmodel.fromJson(article);
        articalelist.add(articalmodel);
      }
      return articalelist;
    } catch (e) {
      //print('Error fetching news: $e');
      return [];
    }
  }
}*/

//dio: APIs مكتبة قوية للتعامل مع الـ (زي http بس اقوي
//ArticalModel.dart: الملف اللي فيه الموديل للبيانات
//Newsservis هنا بتعرف كلاس اسمه
//  Dio من نوع dio الكلاس فسه متغسر
//في الـ constructor: بتاخد dio كـ parameter وتخزنه عشان تستخدمه في طلبات الـ API
/*دي دالة غير متزامنة async اسمها getNews.
بترجع Future يحتوي على List من Articalmodel (يعني لستة مقالات).
category مطلوب (زي "sports" أو "technology") عشان تحددي نوع الأخبار.*/

/*بيجيب اللستة اللي جوا المفتاح "results".
دي هتبقى عبارة عن List من Maps (كل واحدة تمثل خبر)*/
// List<dynamic> articles = jsonData['results'];
/*هنا بيمشي على كل عنصر في اللستة (articles).
يحوّل كل خبر من JSON → كائن Articalmodel باستخدام fromJson.
بعدين يضيف الكائن للـ articalelist.*/

/*بيرجع اللستة النهائية فيها المقالات ككائنات
      //Dart تقدر تستخدميها بسهولة في واجهة Flutter.
      return articalelist;*/

/*هنا خط الدفاع لو حصل أي خطأ 
       بايظAPI(مثلاً النت مقطوع أو .
بيطبع الخطأ ويرجع لستة فاضية بدل ما يبوظ البرنامج.
    } catch (e) {*/

//tharwat
import 'package:dio/dio.dart';
import 'package:first/model/ArticalModel.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

//'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');