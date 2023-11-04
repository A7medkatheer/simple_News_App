import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_tharwat/model/article_model.dart';

class NewTile extends StatelessWidget {
  const NewTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedNetworkImage(
          imageUrl: articleModel.image ??
              "https://cdn.pixabay.com/photo/2017/01/18/08/25/social-media-1989152_1280.jpg",
          imageBuilder: (context, imageProvider) => Container(
            height: 230,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => Image.network(
              "https://newsinterpretation.com/wp-content/uploads/2020/03/news33.jpg"),
        ),
        // ClipRRect(
        //     borderRadius: BorderRadius.circular(6),
        //     child: Image.network(
        //       articleModel.image ??
        //           'https://newsinterpretation.com/wp-content/uploads/2020/03/news33.jpg',
        //       height: 230,
        //       width: MediaQuery.of(context).size.width,
        //       fit: BoxFit.cover,
        //     )),
        const SizedBox(height: 12),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            // fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
