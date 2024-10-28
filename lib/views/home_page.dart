import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget aniamtion_do(index, delay, child) {
    if (index == 1) {
      return FadeInDown(duration: Duration(seconds: delay), child: child);
    }
    return FadeInDown(duration: Duration(seconds: delay), child: child);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var theme = Theme.of(context).textTheme;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Expanded(
              child: PageView.builder(
                  controller: pageController,
                  //itemCount: listOfItem,
                  onPageChanged: (newIndex) {
                    currentIndex = newIndex;
                  },
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return SizedBox(
                      width: size.width,
                      height: size.height,
                      child: Column(
                        children: [],
                      ),
                    );
                  })))
        ],
      ),
    ));
  }
}
