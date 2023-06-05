import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widget/helpers/assets_helper.dart';
import '../../widget/themes/app_colors.dart';
import '../../widget/themes/app_text_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                  color: AppColors.darkBackground,
                  borderRadius: BorderRadius.circular(22)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 12),
                    child: FaIcon(
                      FontAwesomeIcons.search,
                      color: AppColors.white,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Movie',
                        hintStyle: AppTextStyles.heading3,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    width: size.height / 15,
                    height: size.height / 15,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            GradienPalette.blue1,
                            GradienPalette.blue2,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(14)),
                    child: Image.asset(AssetHelper.icon_contro_search),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
