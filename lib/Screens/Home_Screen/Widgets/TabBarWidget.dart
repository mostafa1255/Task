import 'package:flutter/material.dart';
import '../../../Core/Images/App_Image.dart';
import '../../../Core/Styles/App_Colors.dart';
import '../../../Core/Styles/text_Style.dart';
import 'CategoriesListView.dart';

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
              Tab(
                text: 'Categories',
              ),
              Tab(text: 'Services'),
              Tab(text: 'Orders'),
            ],
          ),
          SizedBox(
            height: device.height * 0.4,
            child: TabBarView(
              children: [
                // Content for Header 1
                Padding(
                  padding: EdgeInsets.only(top: device.height * 0.02),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Categories Viewsee all",
                          style: Txtstyle.style14(context: context)
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: device.height * 0.02,
                        ),
                        CategoriesListView(device: device, title: const [
                          "Constructions",
                          "Insurances",
                          "Legal",
                          "Buy & Sell",
                          "Accounting Services",
                        ], lisicons: const [
                          AppImage.icon3,
                          AppImage.insurancesIcon,
                          AppImage.legalIcon,
                          AppImage.buySellIcon,
                          AppImage.accountingServicesIcon,
                        ])
                      ],
                    ),
                  ),
                ),
                // Content for Header 2
                Center(
                  child: Text(
                    "No Services found",
                    style: Txtstyle.style22(context: context),
                  ),
                ),
                // Content for Header 3
                Center(
                    child: Column(
                  children: [
                    Image.asset(AppImage.icon2),
                    Text(
                      "No orders found",
                      style: Txtstyle.style22(context: context),
                    ),
                    SizedBox(
                      height: device.height * 0.01,
                    ),
                    SizedBox(
                      width: device.width * 0.8,
                      child: Text(
                        "you can place your needed orders to let serve you.",
                        textAlign: TextAlign.center,
                        style: Txtstyle.style20(context: context).copyWith(
                            color: AppColors.kGreyColor,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
