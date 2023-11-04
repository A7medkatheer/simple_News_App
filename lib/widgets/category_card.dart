import 'package:flutter/material.dart';
import 'package:news_app_tharwat/model/categoy_model.dart';
import 'package:news_app_tharwat/views/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(category: category.categoryname),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              category.categoryname,
              style: const TextStyle(
                color: Colors.white,
                // fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
