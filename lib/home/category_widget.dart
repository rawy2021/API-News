import 'package:flutter/material.dart';
import 'package:todo/model/category.dart';

class CategoryWidget extends StatelessWidget {
  Category category;
  int index;
  CategoryWidget(this.category ,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(category.colorCode),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular((index%2==0)? 0 : 12),
          bottomLeft: Radius.circular((index%2==0)? 0 : 12),
        ),
      ),
      child: Column(
        children: [
          Image.asset(category.image,height: 120,fit: BoxFit.fill,),
          Expanded(
            child: Center(
              child: Text(category.title,style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            ),
          ),

        ],
      ),
    );
  }
}
