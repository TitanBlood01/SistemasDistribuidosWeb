

import 'package:flutter/material.dart';
import 'package:news/models/blog_p.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/parqueo/components/categories_parqueo.dart';
import 'package:news/screens/parqueo/components/parqueo_post.dart';

import '../../constants.dart';

class ParqueoScreen extends StatelessWidget {
  const ParqueoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Column(
                children: List.generate(
                    blogpost.length, (index) => BlogParqueo(blog: blogpost[index]
                  ),
                ),
              ),
              
            ],
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        //
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                SizedBox(height: kDefaultPadding),
                CategoriesParqueo(),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
      ],
    );
  }
}
