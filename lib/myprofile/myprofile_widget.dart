import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../u_p_iaddress/u_p_iaddress_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyprofileWidget extends StatefulWidget {
  const MyprofileWidget({Key key}) : super(key: key);

  @override
  _MyprofileWidgetState createState() => _MyprofileWidgetState();
}

class _MyprofileWidgetState extends State<MyprofileWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  bool switchListTileValue;
  TextEditingController textController5;
  TextEditingController textController6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: '[User Name]');
    textController2 = TextEditingController(text: '[User contact number]');
    textController3 = TextEditingController(text: '[Saved Address]');
    textController4 = TextEditingController(text: 'Protection');
    textController5 = TextEditingController(text: 'See all transactions');
    textController6 = TextEditingController(text: 'Handle notifications');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_ios,
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
        actions: [],
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
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/154/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Change Picture',
                      options: FFButtonOptions(
                        width: 150,
                        height: 25,
                        color: Color(0xFF010101),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController1',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7882A4),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.edit_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1, 0),
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController2',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'My Contact number',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                ),
                            keyboardType: TextInputType.number,
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.edit_rounded,
                              color: Colors.black,
                              size: 24,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1, 0),
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController3',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'UPI Address',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7882A4),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: UPIaddressWidget(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController4',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController4,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Security',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7882A4),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 3.3),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: SwitchListTile(
                                value: switchListTileValue ??= true,
                                onChanged: (newValue) => setState(
                                    () => switchListTileValue = newValue),
                                tileColor: Colors.white,
                                activeColor: Color(0xFF010101),
                                activeTrackColor: Color(0xFF1EAE98),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1, 0),
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController5',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController5,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'My Gold',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7882A4),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD1D1D1),
                            offset: Offset(2, 3),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1, 0),
                        children: [
                          TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController6',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            controller: textController6,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Notifications',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF7882A4),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: '[Your name]',
                              hintStyle: FlutterFlowTheme.of(context).bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 22, 20, 22),
                            ),
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Text(
                        'Designed in Bharat',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
