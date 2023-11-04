// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_tharwat/model/article_model.dart';
// import 'package:news_app_tharwat/services/news_services.dart';
// import 'package:news_app_tharwat/widgets/new_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading ?const CircularProgressIndicator() : SliverList(
//         delegate: SliverChildBuilderDelegate(
//       childCount: articles.length,
//       (context, index) => Padding(
//         padding: const EdgeInsets.only(bottom: 16),
//         child: NewTile(
//           articleModel: articles[index],
//         ),
//       ),
//     ));
//     // SliverToBoxAdapter(
//     //   child: NewsListView(),
//     // ),;
//   }
// }
