import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_one/Data/Manager/cubit/home_cubit.dart';
import '../../../Core/Styles/text_Style.dart';
import 'CategoriesListView.dart';


class Header1Content extends StatelessWidget {
  const Header1Content({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: device.height * 0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories View",
                  style: Txtstyle.style14(context: context)
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "see all",
                  style: Txtstyle.style14(context: context).copyWith(
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is SucsessUserData) {
                  return CategoriesListView(
                    device: device,
                    data: state.userList,
                  );
                } else if (state is FaliureUserData) {
                  return Center(
                    child: Text(
                      state.errMessage,
                      style: Txtstyle.style25(context: context),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
