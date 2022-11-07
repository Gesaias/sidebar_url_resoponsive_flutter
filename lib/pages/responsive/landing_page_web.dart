import 'package:flutter/material.dart';
import 'package:url_sidebar_web/pages/about_page.dart';
import 'package:url_sidebar_web/pages/help_page.dart';
import 'package:url_sidebar_web/pages/home_page.dart';
import 'package:url_sidebar_web/pages/profile_page.dart';
import 'package:url_sidebar_web/pages/responsive/dimensions.dart';
import 'package:url_sidebar_web/pages/settings_page.dart';
import 'package:url_sidebar_web/widgets/nav_item_widget.dart';

class LandingPageWeb extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPageWeb({Key? key, required this.page, required this.extra})
      : super(key: key);
  @override
  _LandingPageWebState createState() => _LandingPageWebState();
}

List<String> pages = [
  'home',
  'about',
  'profile',
  'settings',
  'help',
];

List<IconData> icons = [
  Icons.home,
  Icons.pages_rounded,
  Icons.person_rounded,
  Icons.settings_rounded,
  Icons.help_rounded,
];

class _LandingPageWebState extends State<LandingPageWeb> {
  final Dimensions dimensions = Dimensions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: () {
                      if (icons.indexOf(e) == 1) {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}/Scott');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: IndexedStack(
                        index: pages.indexOf(widget.page),
                        children: [
                          Home(),
                          About(widget.extra),
                          Profile(),
                          Settings(),
                          Help(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
