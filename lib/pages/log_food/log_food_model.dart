import '/components/food_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogFoodModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel1;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel2;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel3;
  // Model for FoodCard component.
  late FoodCardModel foodCardModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    foodCardModel1 = createModel(context, () => FoodCardModel());
    foodCardModel2 = createModel(context, () => FoodCardModel());
    foodCardModel3 = createModel(context, () => FoodCardModel());
    foodCardModel4 = createModel(context, () => FoodCardModel());
  }

  void dispose() {
    searchFieldController?.dispose();
    foodCardModel1.dispose();
    foodCardModel2.dispose();
    foodCardModel3.dispose();
    foodCardModel4.dispose();
  }

  /// Additional helper methods are added here.

}
