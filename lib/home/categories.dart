
//import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/home/category_widget.dart';
import 'package:todo/model/category.dart';

class CategoriesFragment extends StatelessWidget {
  var Categories = Category.getCategories();
  Function onCategoryClick;
  CategoriesFragment(this.onCategoryClick);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('Pick Your Categories of Intrest'),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (_,index){
                  return InkWell(onTap : (){
                    onCategoryClick(Categories[index],);
                  },
                      child: CategoryWidget(Categories[index], index));
                },itemCount: Categories.length,),
          )
        ],
      ),
    );
  }
}
