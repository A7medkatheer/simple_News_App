
import 'package:flutter/material.dart';
import 'package:news_app_tharwat/model/article_model.dart';

import 'package:news_app_tharwat/widgets/new_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles ;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: NewTile(
          articleModel: articles[index],
        ),
      ),
    ));
  }
}
