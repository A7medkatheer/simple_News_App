import 'package:flutter/material.dart';
import 'package:news_app_tharwat/widgets/bar.dart';
import 'package:news_app_tharwat/widgets/category_listview.dart';
import 'package:news_app_tharwat/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: Bar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CatregoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
              NewsListViewBuilder(
                category: "general",
              ),
            ],
          ),
        )
        //  const Column(
        //   children: [
        //     CatregoryListView(),
        //     SizedBox(height: 32),
        //     Expanded(
        //       child: NewsListView(),
        //     ),
        //   ],
        // )
        );
  }
}
