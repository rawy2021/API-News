import 'package:flutter/material.dart';
import 'package:todo/model/SourcesRespons.dart';
import '../news/news_container.dart';
import 'tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Sources>Source;
  TabContainer(this.Source);

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(length: widget.Source.length,
        child: Column(
          children: [
            TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                onTap: (index){
                  selectedIndex = index;
                  setState(() {

                  });
                },

                tabs:
                  widget.Source.map((Sources) => TabItem(Sources,
                      selectedIndex == widget.Source.indexOf(Sources),
                  )).toList()
            ),
            Expanded(child: NewsContainer(widget.Source[selectedIndex])),
          ],

        ));
  }
}
