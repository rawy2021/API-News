import 'package:flutter/material.dart';
import 'package:todo/home/categories.dart';
import 'package:todo/home/category/category_details.dart';
import 'package:todo/model/category.dart';
import 'home_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName ='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/1.jpg'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Rawy News',style: TextStyle(fontSize: 22)),),
          drawer: Drawer(
            child: HomeDrawer(
                onSideMenuItemClick
            ),
          ),
          body:
          selectedCategory ==null?
          CategoriesFragment(onCategoryClick) : CategoryDetails(selectedCategory!),
          ),
    );
  }

  Category? selectedCategory =null;

  void onCategoryClick(Category category){
    selectedCategory =category;
    setState(() {

    });

  }
  void onSideMenuItemClick(int clickedItem){
    Navigator.pop(context);
    if (clickedItem==HomeDrawer.CATEGORIES){
      selectedCategory=null;
      setState(() {

      });

    }else if (clickedItem==HomeDrawer.SETTING){

    }

  }
}
