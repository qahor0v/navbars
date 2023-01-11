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
  double x = 0.0;
  Color selectedItemColor = Colors.amber;
  Color unselectedItemColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.1;
    double width = MediaQuery.of(context).size.width;
    setState(() {
      y = 0.0;
      // x = 0.28;
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
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 0 ? selectedItemColor : unselectedItemColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
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
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 1 ? selectedItemColor : unselectedItemColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
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
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 2 ? selectedItemColor : unselectedItemColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
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
              duration: const Duration(seconds: 1),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 3 ? selectedItemColor : unselectedItemColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
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
    );
  }
}
/// AnimatedContainer(
//             height: height,
//             width: width,
//             duration: const Duration(seconds: 1),
//             alignment: Alignment(x, y),
//             child: Container(
//               height: 10,
//               width: 10,
//               color: Colors.red,
//             ),
//             onEnd: () {
//               setState(() {
//                 isActive = false;
//               });
//             },
//           ),