import '../addgoalspage/addgoalspage_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FitFitnessWidget extends StatefulWidget {
  const FitFitnessWidget({Key key}) : super(key: key);

  @override
  _FitFitnessWidgetState createState() => _FitFitnessWidgetState();
}

class _FitFitnessWidgetState extends State<FitFitnessWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'My FinFitness',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Montserrat',
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.75, 0),
                          child: CircularPercentIndicator(
                            percent: 0.5,
                            radius: 62.5,
                            lineWidth: 18,
                            animation: true,
                            progressColor: Color(0xFF52C95C),
                            backgroundColor: Colors.white,
                            center: Text(
                              '50%',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.7, -0.5),
                          child: Text(
                            'Invested',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.7, -0.2),
                          child: Text(
                            '[Invested so far]',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.7, 0.2),
                          child: Text(
                            'Monthly Goal',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.7, 0.5),
                          child: Text(
                            '[monthly goal]',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Text(
                            '[Display Goall Name]',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'Add Goal',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 50,
                          icon: Icon(
                            FFIcons.kgoalIcon,
                            color: Color(0xFFFFE57F),
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: AddgoalspageWidget(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: 350,
                  height: 350,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.network(
                              '',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            Image.network(
                              'https://picsum.photos/seed/529/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              'https://picsum.photos/seed/734/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
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
                              dotWidth: 8,
                              dotHeight: 10,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF010101),
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
          ],
        ),
      ),
    );
  }
}
