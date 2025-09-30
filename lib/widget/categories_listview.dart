
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
