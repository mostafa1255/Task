import 'package:flutter/material.dart';

import '../../../Core/Images/App_Image.dart';
import '../../../Core/Styles/text_Style.dart';

class WelcomePerson extends StatelessWidget {
  const WelcomePerson({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImage.accountPic),
        SizedBox(
          width: device.width * 0.03,
        ),
        Flexible(
          child: Text(
            "Hey, Ahmed",
            style: Txtstyle.style16(context: context),
          ),
        ),
        SizedBox(
          width: device.width * 0.015,
        ),
        Image.asset(AppImage.image2),
      ],
    );
  }
}
