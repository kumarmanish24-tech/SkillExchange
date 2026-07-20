import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final List<Widget> pages;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          TabBar(
            tabs: tabs,
          ),
          Expanded(
            child: TabBarView(
              children: pages,
            ),
          ),
        ],
      ),
    );
  }
}