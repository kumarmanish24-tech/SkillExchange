import 'package:flutter/material.dart';
import 'package:ex32/navigation_pages/explore.dart';
import 'package:ex32/navigation_pages/home.dart';
import 'package:ex32/navigation_pages/profile.dart';
import 'package:ex32/navigation_pages/sessions.dart';
import 'package:ex32/navigation_pages/chats.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    Home(),
    Explore(),
    Chats(),
    Sessions(),
    Profile(),

  ];

  final List<IconData> icons = [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.wechat_outlined,
    Icons.play_circle_outline_outlined,
    Icons.perm_identity,
  ];

  final List<String> titles = [
    "Home",
    "Explore",
    "Chat",
    "Session",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(8, 89, 89,1),
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.black26,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(icons.length, (index) {
                bool active = selectedIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    padding: EdgeInsets.symmetric(
                      horizontal: active ? 18 : 2,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: active
                          ? Color.fromRGBO(175, 240, 230,1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          icons[index],
                          color: active
                              ? Color.fromRGBO(5, 162, 154,1)
                              : Colors.white,
                        ),
                        if (active) ...[
                          const SizedBox(width: 8),
                          Text(
                            titles[index],
                            style: const TextStyle(
                              color: Color.fromRGBO(5, 162, 154,1),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
