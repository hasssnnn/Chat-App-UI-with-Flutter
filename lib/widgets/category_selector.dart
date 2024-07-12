import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_tut/constants/colors.dart';

class CategorySeelctorWidget extends StatefulWidget {
  const CategorySeelctorWidget({super.key});

  @override
  State<CategorySeelctorWidget> createState() => _CategorySeelctorWidgetState();
}

class _CategorySeelctorWidgetState extends State<CategorySeelctorWidget> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: kPrimaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text(
                categories[index],
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60),
              ),
            ),
          );
          // return Container(
          //   margin: const EdgeInsets.all(10.0),
          //   width: 70.0,
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     borderRadius: BorderRadius.circular(30.0),
          //   ),
          //   child: Center(
          //     child: Text(
          //       categories[index],
          //       style: const TextStyle(
          //         color: Colors.white,
          //         fontSize: 24.0,
          //         fontWeight: FontWeight.bold,
          //         letterSpacing: 1.2,
          //       ),
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
