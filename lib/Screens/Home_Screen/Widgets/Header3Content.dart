import 'package:flutter/material.dart';

import '../../../Core/Images/App_Image.dart';
import '../../../Core/Styles/App_Colors.dart';
import '../../../Core/Styles/text_Style.dart';

class Header3Content extends StatelessWidget {
  const Header3Content({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    ));
  }
}
