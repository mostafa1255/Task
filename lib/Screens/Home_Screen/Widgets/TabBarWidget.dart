import 'package:flutter/material.dart';
import '../../../Core/Styles/App_Colors.dart';
import 'Header1Content.dart';
import 'Header2Content.dart';
import 'Header3Content.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.device,
  });
  final Size device;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.kRedColor),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(text: 'Categories'),
              Tab(text: 'Services'),
              Tab(text: 'Orders'),
            ],
          ),
          SizedBox(
            height: device.height * 0.4,
            child: TabBarView(
              children: [
                // Content for Header 1
                Header1Content(device: device),
                // Content for Header 2
                const Header2Content(),
                // Content for Header 3
                Header3Content(device: device),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
