import '/components/chip_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GettingStartedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NameField widget.
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // Models for Chip dynamic component.
  late FlutterFlowDynamicModels<ChipModel> chipModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chipModels = FlutterFlowDynamicModels(() => ChipModel());
  }

  void dispose() {
    nameFieldController?.dispose();
    chipModels.dispose();
  }

  /// Additional helper methods are added here.

}
