import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/helpers/assets_helper.dart';
import '../../widget/themes/app_text_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: size.height/10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Find Your Best\nMovie',style: AppTextStyles.h1,),
            CircleAvatar(
              radius: size.height/24,
              backgroundImage: AssetImage(AssetHelper.avt),

            )
          ],
        ),
      ),
    );
  }
}