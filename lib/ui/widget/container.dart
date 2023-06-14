import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
class MyContainer extends StatelessWidget {
  MyContainer({
    super.key,
    required this.img,
    required this.name,
    required this.min,
  });
  String img;
  String name;
  int min;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFFF4F4F4),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(img,)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,textAlign: TextAlign.center,style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 4,),
                    Text('$min Mins',textAlign: TextAlign.center,style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.5),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
