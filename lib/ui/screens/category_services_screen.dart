import 'package:flutter/material.dart';

import '../widgets/category_services_select_card.dart';
import 'order_food_home_screen.dart';

class CategoryServicesScreen extends StatefulWidget {
  const CategoryServicesScreen({super.key});

  static String name = 'category-selection';

  @override
  State<CategoryServicesScreen> createState() => _CategoryServicesScreenState();
}

class _CategoryServicesScreenState extends State<CategoryServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.spaceAround,
              children: [
                CategoryServicesCardSelect(
                  title: 'ORDER FOOD',
                  img:
                      'https://media.istockphoto.com/id/611071834/vector/hand-holding-smartphone-with-pizza-cola-and-chicken.jpg?s=612x612&w=0&k=20&c=kVrZ2STwc4qfoVI5JyQd_evaPNagE-5N3T6flFCOs-A=',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, OrderFoodHomeScreen.name, (p)=>false);
                  },
                ),
                CategoryServicesCardSelect(
                  title: 'TAKE AWAY',
                  img:
                      'https://thumbs.dreamstime.com/b/kids-ordering-food-restaurant-vector-illustration-fast-48816781.jpg',
                  onTap: () {},
                ),
                CategoryServicesCardSelect(
                  title: 'RESERVE TABLE',
                  img:
                      'https://artemisgrill.com.sg/wp-content/uploads/sites/3/2024/11/Christmas-Artemis-Homepage-10-1-1024x576.jpg',
                  onTap: () {},
                ),
                CategoryServicesCardSelect(
                  title: 'FOOD PLANNER',
                  img:
                      'https://blog.resy.com/wp-content/uploads/2025/01/Jade-Rabbit_cover-800x450.jpg',
                  onTap: () {},
                ),
                CategoryServicesCardSelect(
                  title: 'CATERING',
                  img:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSnodDUnYsb7qmyme7mO0eXW7FZiSbd2PbTQ&s',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
