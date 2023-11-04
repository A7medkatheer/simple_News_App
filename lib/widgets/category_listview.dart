import 'package:flutter/material.dart';
import 'package:news_app_tharwat/model/categoy_model.dart';
import 'package:news_app_tharwat/widgets/category_card.dart';

class CatregoryListView extends StatelessWidget {
  const CatregoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryname: 'General',
      image: 'assets/general.avif',
    ),
    CategoryModel(
      categoryname: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryname: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      categoryname: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      categoryname: 'Science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      categoryname: 'Sports',
      image: 'assets/sports.avif',
    ),
    CategoryModel(
      categoryname: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Categorycard(category: categories[index]);
          }),
    );
  }
}
