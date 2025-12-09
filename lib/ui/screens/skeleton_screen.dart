import 'package:flutter/material.dart';

class SkeletonScreen extends StatefulWidget {
  const SkeletonScreen({super.key});
  static String name = 'main-page';

  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
