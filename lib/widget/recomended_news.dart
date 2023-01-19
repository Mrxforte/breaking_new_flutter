import 'package:flutter/material.dart';
import '../models/recomended_news_model.dart';
import '../pages/recomend_news_detail.dart';
import '../theme.dart';

class RecomendedNews extends StatelessWidget {
  RecomendedNewsModel news;
  RecomendedNews({required this.news});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecomendNewsDetail(recNews: news),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        child: Row(
          children: [
            Image.asset(
              news.image,
              width: 96,
            ),
            SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.category,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      color: Color(0xFF7C82A1),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    news.title,
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
