/*import 'package:first/model/category_model.dart';
import 'package:first/widget/category_card.dart';
import 'package:flutter/material.dart';

/*ويدجت بتمثل كارت للتصنيف.
بتعرض صورة واسم.
   (CategoryView)لو ضغطت عليها → بتفتح شاشة جديد
   وتعرض الأخبار الخاصة بالتصنيف ده
*/
class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});
  final List<categoryModel> categories = const [
    categoryModel(
        image: 'assets/image/technology.jpeg',
        name: /*'Technology'*/ 'Culture'),
    categoryModel(image: 'assets/image/business.avif', name: 'business'),
    categoryModel(
        image: 'assets/image/entertaiment.avif', name: 'entertainment'),
    categoryModel(image: 'assets/image/health.avif', name: 'health'),
    categoryModel(image: 'assets/image/science.avif', name: 'science'),
    categoryModel(image: 'assets/image/sports.avif', name: 'sports'),
    categoryModel(image: 'assets/image/general.avif', name: 'genera'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        // التمرير فيها بيكون افقي بس علشان استخدمنا
        // الويدجيت في الستر التاني بتكون افقي
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: categories[index],
              );
            }));
  }
}*/

//tharwat
import 'package:first/model/category_model.dart';
import 'package:flutter/material.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/image/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/image/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/image/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/image/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/image/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/image/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/image/general.avif',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
