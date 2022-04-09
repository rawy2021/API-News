import 'package:flutter/material.dart';
import 'package:todo/api_manager.dart';
import 'package:todo/home/category/tab_container.dart';
import 'package:todo/model/SourcesRespons.dart';
import 'package:todo/model/category.dart';
import 'tab_container.dart';

class CategoryDetails extends StatelessWidget {
  static const String routeName = 'category_Details';
  Category category;
  CategoryDetails(this.category);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Rawy News'),),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<SourcesRespons>(
                future: ApiManager.getSources(category.id),
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
                    );
                  }
                  if("Ok" ==snapshot.data?.status){
                    return Column(
                      children: [
                        Text(snapshot.data?.message?? ''),
                        ElevatedButton(onPressed: (){}, child:Text('Try again')),
                      ],
                    );
                  }
                  var SourcesList = snapshot.data?.sources ?? [];
                  return TabContainer(SourcesList);
            }),
          )
        ],
      ),
    );
  }
}
