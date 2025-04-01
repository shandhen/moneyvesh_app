import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CommonQuestionsWidget extends StatefulWidget {
  const CommonQuestionsWidget({Key key}) : super(key: key);

  @override
  _CommonQuestionsWidgetState createState() => _CommonQuestionsWidgetState();
}

class _CommonQuestionsWidgetState extends State<CommonQuestionsWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: 500,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: PageView(
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.vertical,
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/814/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://picsum.photos/seed/98/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://picsum.photos/seed/344/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.9, -0.5),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: SmoothPageIndicator(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      count: 3,
                      axisDirection: Axis.vertical,
                      onDotClicked: (i) {
                        pageViewController.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 2,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
