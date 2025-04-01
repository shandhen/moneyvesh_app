import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RiskEvaluationWidget extends StatefulWidget {
  const RiskEvaluationWidget({Key key}) : super(key: key);

  @override
  _RiskEvaluationWidgetState createState() => _RiskEvaluationWidgetState();
}

class _RiskEvaluationWidgetState extends State<RiskEvaluationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 24,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(43, 0, 0, 0),
                  child: Text(
                    '40% Complete',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(43, 0, 0, 0),
                  child: Text(
                    'Help us evaluate your risk appetite',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(43, 0, 0, 0),
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFF53CD6B),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFF53CD6B),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'How familiar are you with investment \nmatters?',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Montserrat',
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
