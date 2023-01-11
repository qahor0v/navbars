import 'package:flutter/material.dart';

class NavBarTest extends StatefulWidget {
  const NavBarTest({Key? key}) : super(key: key);

  @override
  State<NavBarTest> createState() => _NavBarTestState();
}

class _NavBarTestState extends State<NavBarTest> {
  bool isActive = false;
  int index = 0;
  double y = 0.0;
  double x = -0.72;
  Color selectedItemColor = Colors.amber;
  Color unselectedItemColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.1;
    double width = MediaQuery.of(context).size.width;
    setState(() {
      //x = -0.72;
    });
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          AnimatedContainer(
            curve: Curves.decelerate,
            height: height,
            width: width,
            duration: const Duration(milliseconds: 500),
            alignment: Alignment(x, y),
            child: Container(
              height: isActive ? 30 : 0.1,
              width: isActive ? 30 : 0.1,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onEnd: () {
              setState(() {
                isActive = false;
              });
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: index == 0 ? selectedItemColor : unselectedItemColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = -0.72;
                        index = 0;
                        isActive = true;
                      });
                    },
                    child: const Icon(
                      Icons.home_sharp,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: index == 1 ? selectedItemColor : unselectedItemColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = -0.28;
                        index = 1;
                        isActive = true;
                      });
                    },
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: index == 2 ? selectedItemColor : unselectedItemColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = 0.28;
                        index = 2;
                        isActive = true;
                      });
                    },
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: index == 3 ? selectedItemColor : unselectedItemColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        x = 0.72;
                        index = 3;
                        isActive = true;
                      });
                    },
                    child: const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
