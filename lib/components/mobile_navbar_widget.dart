import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mobile_navbar_model.dart';
export 'mobile_navbar_model.dart';

class MobileNavbarWidget extends StatefulWidget {
  const MobileNavbarWidget({super.key});

  @override
  State<MobileNavbarWidget> createState() => _MobileNavbarWidgetState();
}

class _MobileNavbarWidgetState extends State<MobileNavbarWidget> {
  late MobileNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileNavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        desktop: false,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFCEC6F3),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/20260126_1041_Purple_Leaf_Icon_remix_01kfwtrt0ce37bdqww9dwcxp4m.png',
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ),
              if (FFAppState().sidebarOpen)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().sidebarOpen = false;
                    _model.updatePage(() {});
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              if (!FFAppState().sidebarOpen)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().sidebarOpen = true;
                    _model.updatePage(() {});
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
