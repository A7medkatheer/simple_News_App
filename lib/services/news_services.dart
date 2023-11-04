import 'package:dio/dio.dart';
import 'package:news_app_tharwat/model/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3ecd07f69c614747b51fee2966e7be16&category=$category');
      Map<String, dynamic> josnData = response.data;

      List<dynamic> articles = josnData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
