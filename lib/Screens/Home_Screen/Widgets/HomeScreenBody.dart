import 'package:flutter/material.dart';
import 'package:task_one/Core/Styles/App_Colors.dart';
import 'package:task_one/Core/Styles/text_Style.dart';
import 'HorizontalScrollList.dart';
import 'TabBarWidget.dart';
import 'WelcomePerson.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: device.width * 0.04,
        vertical: device.height * 0.013,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Pic with Name of Person
            WelcomePerson(device: device),
            SizedBox(
              height: device.height * 0.03,
            ),
            Text(
              "Multi-Services for Your Real Estate Needs",
              style: Txtstyle.style18(context: context),
            ),
            SizedBox(
              height: device.height * 0.012,
            ),
            SizedBox(
              width: device.width * 0.80,
              child: Text(
                "Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.",
                style: Txtstyle.style14(context: context)
                    .copyWith(color: AppColors.kGreyColor),
              ),
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            //Horizontal Scroll Container
            SizedBox(
                width: device.width,
                height: device.height * 0.25,
                child: HorizontalScrollList()),
            SizedBox(
              height: device.height * 0.02,
            ),
            SizedBox(
              height: device.height * 0.025,
            ),
            //Tab Bar
            TabBarWidget(device: device),
          ],
        ),
      ),
    );
  }
}
