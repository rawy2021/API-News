import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static const int SETTING =1;
  static const int CATEGORIES =1;
  Function onSideMenuItemCallBack;
  HomeDrawer(this.onSideMenuItemCallBack);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 70),
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Center(child: Text('News app',style: TextStyle(
            color: Colors.white,
            fontSize: 33
          ),),),
          
        ),
        InkWell(
            onTap: (){
              onSideMenuItemCallBack(CATEGORIES);

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [Icon(Icons.list,), Text('Categories',style: TextStyle(fontSize: 22),),],),
            )),
        InkWell(
            onTap: (){
              onSideMenuItemCallBack(SETTING);

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [Icon(Icons.settings,), Text('Setting',style: TextStyle(fontSize: 22),),],),
            )),
      ],
    );
  }
}
