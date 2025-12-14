import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class FoodNestAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FoodNestAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/fav_icon.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Text('Deliver to', style: TextStyle(fontSize: 12, color: Colors.white54)),
                Text('Madina, Saudi Arabia', style: TextStyle(fontSize: 18, color: Colors.white70)),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: IconButton(onPressed: () {}, icon: LineIcon.bellAlt(), iconSize: 38),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
