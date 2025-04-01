import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../myprofile/myprofile_widget.dart';
import '../privacypolicy/privacypolicy_widget.dart';
import '../signuplogin/signuplogin_widget.dart';
import '../termsandconditions/termsandconditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: MyprofileWidget(),
                      ),
                    );
                  },
                  text: 'My Profile',
                  icon: Icon(
                    Icons.person_outlined,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Common Questions',
                  icon: FaIcon(
                    FontAwesomeIcons.questionCircle,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Support',
                  icon: Icon(
                    Icons.support_agent_outlined,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: TermsandconditionsWidget(),
                      ),
                    );
                  },
                  text: 'Terms & Conditions',
                  icon: Icon(
                    Icons.list_alt,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: PrivacypolicyWidget(),
                      ),
                    );
                  },
                  text: 'Privacy Policy',
                  icon: Icon(
                    Icons.policy_outlined,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                        reverseDuration: Duration(milliseconds: 0),
                        child: SignuploginWidget(),
                      ),
                    );
                  },
                  text: 'Log out',
                  icon: Icon(
                    Icons.logout,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 320,
                    height: 65,
                    color: Color(0xFF1E1E1E),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2.5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
