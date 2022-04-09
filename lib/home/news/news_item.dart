import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/NewsResponse.dart';

class NewsWidget extends StatelessWidget {
  News news ;
  NewsWidget(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
            clipBehavior: Clip.antiAlias,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child:
            news.urlToImage==null?
                Icon(Icons.broken_image) : Image.network(news.urlToImage??"",
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(news.author??"",style: TextStyle(
            fontSize: 12,
            color: Colors.grey,),textAlign: TextAlign.start,),
          Text(news.title??"",style: TextStyle(
            fontSize: 18,
            color: Colors.black,),textAlign: TextAlign.start,),
          Text(news.publishedAt??"",style: TextStyle(
            fontSize: 12,
            color: Colors.grey,),textAlign: TextAlign.end,),
        ],
      ),
    );
  }
}
