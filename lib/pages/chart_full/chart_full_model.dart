import '/components/chart_chip_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChartFullModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for ChartChip component.
  late ChartChipModel chartChipModel1;
  // Model for ChartChip component.
  late ChartChipModel chartChipModel2;
  // Model for ChartChip component.
  late ChartChipModel chartChipModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chartChipModel1 = createModel(context, () => ChartChipModel());
    chartChipModel2 = createModel(context, () => ChartChipModel());
    chartChipModel3 = createModel(context, () => ChartChipModel());
  }

  void dispose() {
    chartChipModel1.dispose();
    chartChipModel2.dispose();
    chartChipModel3.dispose();
  }

  /// Additional helper methods are added here.

}
