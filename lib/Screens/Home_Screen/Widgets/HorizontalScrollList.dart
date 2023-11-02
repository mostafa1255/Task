import 'dart:async';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:task_one/Screens/Home_Screen/Widgets/CustomcontainerData.dart';
import '../../../Core/Styles/App_Colors.dart';

class HorizontalScrollList extends StatefulWidget {
  @override
  _HorizontalScrollListState createState() => _HorizontalScrollListState();
}

class _HorizontalScrollListState extends State<HorizontalScrollList> {
  final PageController _pageController = PageController();
  Timer? timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              CustomcontainerData(device: device),
              CustomcontainerData(device: device),
              CustomcontainerData(device: device),
            ],
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
          ),
        ),
        SizedBox(
          height: device.height * 0.05,
        ),
        DotsIndicator(
          dotsCount: 3,
          position: currentPage.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(8.0),
            activeSize: const Size(20.0, 8.0),
            color: Colors.grey.withOpacity(0.4),
            activeColor: AppColors.kRedColor,
            spacing: const EdgeInsets.all(3),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
