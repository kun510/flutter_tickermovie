import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_tiket/widget/helpers/assets_helper.dart';
import 'package:movie_tiket/widget/themes/app_colors.dart';
import 'package:movie_tiket/widget/themes/app_text_style.dart';

import '../components/header.dart';
import '../components/searchbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size)
          ],
        ),
      ),
    );
  }
}

