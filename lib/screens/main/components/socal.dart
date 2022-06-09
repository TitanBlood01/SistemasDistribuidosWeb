

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/Provider/login_web_state.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/Login/login_page.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Socal extends StatefulWidget {
  const Socal({
    Key key,
  }) : super(key: key);

  @override
  State<Socal> createState() => _SocalState();
}

class _SocalState extends State<Socal> {
  @override
  Widget build(BuildContext context) {
    final _userLogged = Provider.of<LoginState>(context, listen: false);
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/behance-alt.svg"),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/feather_twitter.svg"),
        SizedBox(width: kDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: Text("Salir"),
        ),
      ],
    );
  }
}
