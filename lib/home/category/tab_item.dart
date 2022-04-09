import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/SourcesRespons.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool inSelected;
  TabItem(this.sources,this.inSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8 ,horizontal: 24),
      decoration: BoxDecoration(
        color: inSelected?Theme.of(context).primaryColor :Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Text(
        sources.name??"",
            style: TextStyle(
          color: inSelected?Colors.white:Theme.of(context).primaryColor,
      ),
      ),
    );
  }
}
