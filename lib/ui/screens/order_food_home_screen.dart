import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/food_nest_app_bar.dart';

class OrderFoodHomeScreen extends StatefulWidget {
  const OrderFoodHomeScreen({super.key});

  static String name = 'layout';

  @override
  State<OrderFoodHomeScreen> createState() => _OrderFoodHomeScreenState();
}

class _OrderFoodHomeScreenState extends State<OrderFoodHomeScreen> {
  int _selectedIndex = 0;
  int _currentIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home', style: optionStyle),
    Text('Search', style: optionStyle),
    Text('Cart', style: optionStyle),
    Text('Settings', style: optionStyle),
  ];
  final PageController _pageController = PageController();

  List<String> carouselImageList = [
    'https://images.squarespace-cdn.com/content/v1/5a5dbe4632601eb31977f947/1633327221357-NWREEQY82IAW2PFJXUM0/AirAsia_Food_EverydaySale_PR_4Oct-31Oct2021-1200x628_EN.jpg',
    'https://img.freepik.com/psd-gratis/banner-horizontal-restaurante-retro-burger_23-2148591014.jpg',
    'https://img.freepik.com/free-psd/horizontal-banner-burger-restaurant_23-2148714456.jpg',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FoodNestAppBar(),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          const Divider(),
          const SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search favourite recipes',
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(Icons.search, color: Colors.white60, size: 32),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Carousel
          SizedBox(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: carouselImageList.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              reverse: false,
              itemBuilder: (BuildContext context, int index) {
                return CarouselCard(img: carouselImageList[index]);
              },
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 16,
            child: Row(
              mainAxisAlignment: .center,
              children: List.generate(carouselImageList.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: _currentIndex == index ? 16 : 10,
                  width: _currentIndex == index ? 16 : 10,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(40),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey,
              hoverColor: Colors.grey,
              gap: 8,
              curve: Curves.easeInOut,
              activeColor: Colors.white,
              iconSize: 28,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              duration: Duration(milliseconds: 500),
              tabBackgroundColor: Colors.white12,
              color: Colors.white60,
              tabs: [
                GButton(icon: LineIcons.home, text: 'Home'),
                GButton(icon: LineIcons.search, text: 'Search'),
                GButton(icon: LineIcons.shoppingCart, text: 'Cart'),
                GButton(icon: LineIcons.user, text: 'Profile'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(fit: BoxFit.cover, img),
      ),
    );
  }
}
