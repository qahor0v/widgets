import 'package:flutter/material.dart';

class OpenCategory extends StatelessWidget {
  const OpenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          top: 12,
                          left: 20,
                          right: 15,
                          bottom: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            leftImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    // 40 list items
                    childCount: leftImages.length,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          top: 12,
                          left: 15,
                          right: 20,
                          bottom: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            rightImage[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    // 40 list items
                    childCount: rightImage.length,
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

const leftImages = [
  "assets/images/img_2.png",
  "assets/images/img_3.png",
  "assets/images/img.png",
  "assets/images/img_1.png",
  "assets/images/img_4.png",
  "assets/images/img_5.png",
];
const rightImage = [
  "assets/images/img_5.png",
  "assets/images/img_2.png",
  "assets/images/img_3.png",
  "assets/images/img.png",
  "assets/images/img_1.png",
  "assets/images/img_4.png",
];
