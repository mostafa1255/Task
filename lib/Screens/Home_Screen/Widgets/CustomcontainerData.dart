import 'package:flutter/material.dart';

import '../../../Core/Images/App_Image.dart';
import '../../../Core/Styles/App_Colors.dart';
import '../../../Core/Styles/text_Style.dart';

class CustomcontainerData extends StatelessWidget {
  const CustomcontainerData({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: device.width,
      height: device.height * 0.25,
      decoration: const BoxDecoration(color: AppColors.klightredColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: device.width * 0.4,
                child: Text(
                  "Multi-Services for Your Real Estate Needs",
                  style: Txtstyle.style18(context: context),
                ),
              ),
              SizedBox(
                height: device.height * 0.012,
              ),
              SizedBox(
                width: device.width * 0.35,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.kRedColor),
                  ),
                  onPressed: () {},
                  child: const Text("Order"),
                ),
              ),
            ],
          ),
          Image.asset(AppImage.image3),
        ],
      ),
    );
  }
}
