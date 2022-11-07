import 'package:flutter/material.dart';
import 'package:url_sidebar_web/pages/about_page.dart';
import 'package:url_sidebar_web/pages/help_page.dart';
import 'package:url_sidebar_web/pages/home_page.dart';
import 'package:url_sidebar_web/pages/profile_page.dart';
import 'package:url_sidebar_web/pages/settings_page.dart';
import 'package:url_sidebar_web/widgets/nav_item_widget.dart';

class LandingPageMobile extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPageMobile({Key? key, required this.page, required this.extra})
      : super(key: key);
  @override
  _LandingPageMobileState createState() => _LandingPageMobileState();
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

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('Titulo'),
      ),
      drawer: Drawer(
        child: Column(
          children: icons.map((e) {
            return NavItem(
              selected: icons.indexOf(e) == pages.indexOf(widget.page),
              icon: e,
              onTap: () {
                if (icons.indexOf(e) == 1) {
                  Navigator.pushNamed(
                      context, '/main/${pages[icons.indexOf(e)]}/Gesaias');
                } else {
                  Navigator.pushNamed(
                      context, '/main/${pages[icons.indexOf(e)]}');
                }
              },
            );
          }).toList(),
        ),
      ),
      body: Container(
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
    );
  }
}
