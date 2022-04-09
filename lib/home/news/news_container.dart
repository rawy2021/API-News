import 'package:flutter/material.dart';
import 'package:todo/api_manager.dart';
import 'package:todo/model/NewsResponse.dart';
import 'package:todo/model/SourcesRespons.dart';
import 'news_item.dart';

class NewsContainer extends StatelessWidget {
  Sources selectedSources;
  NewsContainer(this.selectedSources);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <NewsResponse>(
      future: ApiManager.getNews(selectedSources.id??""),
     builder: (_,snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
      return CircularProgressIndicator();
      }
      else if(snapshot.hasError){
      return Column(
           children: [
              Text('Somthing went wrong'),
             ElevatedButton(onPressed: (){}, child: Text(' Again')),
               ],
     ) ;
     }
      if("Ok" ==snapshot.data?.status) {
        return Column(
          children: [
              Text(snapshot.data?.message ?? ''),
              ElevatedButton(onPressed: () {}, child: Text('Try again')),
      ],
     );
     }
        var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(itemBuilder: (_,index){
             return NewsWidget(newsList[index]);
      },
         itemCount: newsList.length,
     );
     });
  }
}
