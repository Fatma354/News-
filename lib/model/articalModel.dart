/*ده موديل (كائن) بيمثل المقالة.
ليه 3 متغيرات: الصورة – العنوان – الوصف.*/
/*class Articalmodel {
  final String? image;
  final String title;
  final String? subtitle;
//بنباصي ليه البيانات
//(required لازم القيمه الي هتمر فيه متكونش فارغه)
  Articalmodel(
      {required this.image, required this.title, required this.subtitle});
  //JSON → Objec عشان نسهّل التحويل من
//APIs مع Flutter أغلب شغل
// JSON بيكون بيانات راجعة على هيئة
  factory Articalmodel.fromJson(json) {
    return Articalmodel(
      image: json["image_url"],
      title: json["title"],
      subtitle: json["description"],
    );
  }
}*/
//tharwat
class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;

  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
