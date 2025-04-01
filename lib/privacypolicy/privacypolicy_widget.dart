import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacypolicyWidget extends StatefulWidget {
  const PrivacypolicyWidget({Key key}) : super(key: key);

  @override
  _PrivacypolicyWidgetState createState() => _PrivacypolicyWidgetState();
}

class _PrivacypolicyWidgetState extends State<PrivacypolicyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 50,
            icon: FaIcon(
              FontAwesomeIcons.times,
              color: Color(0xFF010101),
              size: 24,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 0),
                  reverseDuration: Duration(milliseconds: 0),
                  child: NavBarPage(initialPage: 'Settings'),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '[Privacy Policy API]',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Montserrat',
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
