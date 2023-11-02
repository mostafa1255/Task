import 'package:flutter/material.dart';
import 'package:task_one/Data/Models/users_model/users_model.dart';
import '../../../Core/Images/App_Image.dart';
import '../../../Core/Styles/text_Style.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.device,
    required this.data,
  });
  final List<UsersModel> data;
  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: data.length * device.height * 0.105,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: device.height * 0.01),
            child: Container(
              width: device.width,
              height: device.height * 0.06,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  spreadRadius: -22,
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Colors.grey,
                )
              ]),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: device.width * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(data[index].id.toString()),
                          SizedBox(
                            width: device.width * 0.03,
                          ),
                          Text(
                            data[index].name.toString(),
                            style: Txtstyle.style16(context: context)
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Image.asset(AppImage.forwordArrowIcon)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
