import 'package:flutter/material.dart';

import '../../../Core/Styles/text_Style.dart';

class Header2Content extends StatelessWidget {
  const Header2Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No Services found",
        style: Txtstyle.style22(context: context),
      ),
    );
  }
}

