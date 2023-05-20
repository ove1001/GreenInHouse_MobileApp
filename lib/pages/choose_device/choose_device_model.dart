import '/components/device_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooseDeviceModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel1;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel2;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel3;
  // Model for DeviceCard component.
  late DeviceCardModel deviceCardModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    deviceCardModel1 = createModel(context, () => DeviceCardModel());
    deviceCardModel2 = createModel(context, () => DeviceCardModel());
    deviceCardModel3 = createModel(context, () => DeviceCardModel());
    deviceCardModel4 = createModel(context, () => DeviceCardModel());
  }

  void dispose() {
    deviceCardModel1.dispose();
    deviceCardModel2.dispose();
    deviceCardModel3.dispose();
    deviceCardModel4.dispose();
  }

  /// Additional helper methods are added here.

}
