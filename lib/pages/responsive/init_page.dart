import 'package:flutter/widgets.dart';
import 'package:url_sidebar_web/pages/responsive/landing_page_mobile.dart';
import 'package:url_sidebar_web/pages/responsive/landing_page_web.dart';
import 'package:url_sidebar_web/pages/responsive/dimensions.dart';

class InitPage extends StatefulWidget {
  final String page;
  final String extra;

  const InitPage({super.key, required this.page, required this.extra});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  final Dimensions dimensions = Dimensions();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (dimensions.isMobile(context)) {
        return LandingPageMobile(page: widget.page, extra: widget.extra);
      } else {
        return LandingPageWeb(page: widget.page, extra: widget.extra);
      }
    });
  }
}
