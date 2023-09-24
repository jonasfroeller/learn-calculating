import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool stopped = true;

  String runStateChangerText = 'starten';

  int? firstNumber;

  int? secondNumber;

  String? arithmeticOperator = '';

  int? calculationResult;

  ///  State fields for stateful widgets in this component.

  // State field(s) for timer widget.
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for inputField widget.
  TextEditingController? inputFieldController;
  String? Function(BuildContext, String?)? inputFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerController.dispose();
    textController1?.dispose();
    textController2?.dispose();
    inputFieldController?.dispose();
  }

  /// Action blocks are added here.

  Future generateRandomNumbers(BuildContext context) async {
    // GenerateRandomNumbers
    firstNumber = random_data.randomInteger(
        int.parse(textController1.text), int.parse(textController2.text));
    secondNumber = random_data.randomInteger(
        int.parse(textController1.text), int.parse(textController2.text));
  }

  /// Additional helper methods are added here.
}
