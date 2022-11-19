import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/bn_item.dart';
import 'package:restaurantappnew/model/foodmodle.dart';
import 'package:restaurantappnew/screens/favorite_screen.dart';
import 'package:restaurantappnew/screens/food_screen.dart';
import 'package:restaurantappnew/screens/homescreen.dart';
import 'package:restaurantappnew/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  Function myFun;

  MainScreen(
    this.myFun,
  );

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  likePost(Food food) {
    int index = Food.DataFood.indexOf(food);
    Food.DataFood[index].isLike = !Food.DataFood[index].isLike;
    setState(() {});
  }

  final List<BnItem> _bnItem = [
    BnItem(title: 'Home', widget: HomeScreen()),
    BnItem(title: 'Categories', widget: FoodScreen()),
    BnItem(title: 'Favorite', widget: FavoriteScreen()),
    const BnItem(title: 'Setting', widget: SettingScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(
              'assest/imagesicons/Icon  Hamburger_Menu.png',
            ),
            color: Colors.black,
          ),
        ),
        title: Text(
          _bnItem[_currentIndex].title,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          (_currentIndex == 3)
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  color: Colors.black,
                )
              : IconButton(
                  onPressed: () {
                    widget.myFun();
                  },
                  icon: const Icon(Icons.dark_mode),
                  color: Colors.black,
                ),
        ],
      ),
      body: _bnItem[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //عشان عدد العناصر اكتر من تلاتة
        // fixedColor: Colors.red,
        selectedItemColor: Colors.black45,
        selectedIconTheme: const IconThemeData(color: Colors.pink),
        unselectedItemColor: Colors.black26,
        elevation: 10,
        iconSize: 24,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
