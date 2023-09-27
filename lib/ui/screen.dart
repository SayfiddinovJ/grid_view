import 'package:flutter/material.dart';
import 'package:grid_view/ui/widget/container.dart';
import 'package:grid_view/utils/app_tools.dart';

// ignore: must_be_immutable
class Screen extends StatefulWidget {
  Screen({super.key});

  int tap = 0;
  int the = 0;
  int but = 0;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.the == 1 ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.the = 1;
                    });
                  },
                  icon: widget.but == 1
                      ? const Icon(
                          Icons.sunny,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.mode_night,
                          color: Colors.white,
                        ),
                ),
                const SizedBox(
                  width: 10,
                ),
                widget.tap == 1
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            widget.tap = 0;
                          });
                        },
                        icon: const Icon(Icons.desktop_windows))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            widget.tap = 1;
                          });
                        },
                        icon: const Icon(Icons.window),
                      ),
              ],
            ),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: widget.tap == 1 ? 1 : 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                  MyContainer(
                    img: AppImg.house1,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house1);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house2,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house2);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house3,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house3);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house4,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house4);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house5,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house5);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house6,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house6);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house7,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house7);
                      });
                    },
                  ),
                  MyContainer(
                    img: AppImg.house8,
                    onTap: () {
                      setState(() {
                        dialog(AppImg.house8);
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  dialog(String img) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        barrierColor: Colors.black54);
  }
}
