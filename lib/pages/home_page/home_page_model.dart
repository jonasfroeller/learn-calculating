import '/components/main_widget.dart';
import '/components/theme_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Main component.
  late MainModel mainModel1;
  // Model for ThemeSwitch component.
  late ThemeSwitchModel themeSwitchModel1;
  // Model for Main component.
  late MainModel mainModel2;
  // Model for ThemeSwitch component.
  late ThemeSwitchModel themeSwitchModel2;
  // Model for Main component.
  late MainModel mainModel3;
  // Model for ThemeSwitch component.
  late ThemeSwitchModel themeSwitchModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainModel1 = createModel(context, () => MainModel());
    themeSwitchModel1 = createModel(context, () => ThemeSwitchModel());
    mainModel2 = createModel(context, () => MainModel());
    themeSwitchModel2 = createModel(context, () => ThemeSwitchModel());
    mainModel3 = createModel(context, () => MainModel());
    themeSwitchModel3 = createModel(context, () => ThemeSwitchModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    mainModel1.dispose();
    themeSwitchModel1.dispose();
    mainModel2.dispose();
    themeSwitchModel2.dispose();
    mainModel3.dispose();
    themeSwitchModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
