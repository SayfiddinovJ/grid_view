import 'package:flutter/material.dart';
import 'package:grid_view/ui/widget/container.dart';
import 'package:grid_view/utils/app_tools.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        title: const Text('Popular Restaurant',style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),),
        backgroundColor: const Color(0xFF0D0D0D),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: height>width ? 2 : 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  MyContainer(img: AppImg.veganResto, name: 'Vegan Resto', min: 12),
                  MyContainer(img: AppImg.healthyFood, name: 'Health Food', min: 8),
                  MyContainer(img: AppImg.goodFood, name: 'Good Resto', min: 12),
                  MyContainer(img: AppImg.smartResto, name: 'Smart Resto', min: 8),
                  MyContainer(img: AppImg.chef, name: 'Chef', min: 8),
                  MyContainer(img: AppImg.backer, name: 'Backer', min: 8),
                  MyContainer(img: AppImg.veganResto, name: 'Vegan Resto', min: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
