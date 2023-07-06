import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().diasgraficar = _model.countControllerValue!;
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Gráficas de sensores',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Días mostrados',
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 160.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 20.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 20.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: FlutterFlowTheme.of(context).titleLarge,
                        ),
                        count: _model.countControllerValue ??= 1,
                        updateCount: (count) async {
                          setState(() => _model.countControllerValue = count);
                          setState(() {
                            FFAppState().diasgraficar =
                                _model.countControllerValue!;
                          });
                        },
                        stepSize: 1,
                      ),
                    ),
                  ],
                ),
                FutureBuilder<ApiCallResponse>(
                  future: RegistrosSensoresGroup
                      .avgFromPlantAgroupByIntervalsToGraphCall
                      .call(
                    np: 'Mi tomatera',
                    d: FFAppState().diasgraficar,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    final rowAvgFromPlantAgroupByIntervalsToGraphResponse =
                        snapshot.data!;
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 364.0,
                            height: 325.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 390.0,
                                  height: 330.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 390.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                          'Temperatura ambiente',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 369.0,
                                        height: 280.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_valores_maximos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFFCB282B),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4B2DA425),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_valores_minimos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF3125A4),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4C396BEF),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.TEMPERATURA.AMBIENTE.lista_valores''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF9D25A4),
                                                barWidth: 2.0,
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(
                                            title: 'Fecha',
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          yAxisLabelInfo: AxisLabelInfo(
                                            title: getJsonField(
                                              rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                  .jsonBody,
                                              r'''$.TEMPERATURA.AMBIENTE.unidad_medida.nombre''',
                                            ).toString(),
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                            showLabels: true,
                                            labelTextStyle: TextStyle(),
                                            labelInterval: 10.0,
                                            labelFormatter: LabelFormatter(
                                              numberFormat: (val) =>
                                                  formatNumber(
                                                val,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 390.0,
                                  height: 330.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 390.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                          'Humedad ambiente',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 369.0,
                                        height: 280.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_valores_maximos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFFCB282B),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4B2DA425),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_valores_minimos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF3125A4),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4C396BEF),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_valores''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF9D25A4),
                                                barWidth: 2.0,
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(
                                            title: 'Fecha',
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          yAxisLabelInfo: AxisLabelInfo(
                                            title: getJsonField(
                                              rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                  .jsonBody,
                                              r'''$.HUMEDAD.AMBIENTE.unidad_medida.nombre''',
                                            ).toString(),
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                            showLabels: true,
                                            labelTextStyle: TextStyle(),
                                            labelInterval: 10.0,
                                            labelFormatter: LabelFormatter(
                                              numberFormat: (val) =>
                                                  formatNumber(
                                                val,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.commaDecimal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 390.0,
                                  height: 330.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 390.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                          'Humedad maceta',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 369.0,
                                        height: 280.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.MACETA.lista_valores_maximos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFFCB282B),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4B2DA425),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.MACETA.lista_valores_minimos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF3125A4),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4C396BEF),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.HUMEDAD.MACETA.lista_valores''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF9D25A4),
                                                barWidth: 2.0,
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(
                                            title: 'Fecha',
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          yAxisLabelInfo: AxisLabelInfo(
                                            title: getJsonField(
                                              rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                  .jsonBody,
                                              r'''$.HUMEDAD.MACETA.unidad_medida.nombre''',
                                            ).toString(),
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                            showLabels: true,
                                            labelTextStyle: TextStyle(),
                                            labelInterval: 10.0,
                                            labelFormatter: LabelFormatter(
                                              numberFormat: (val) =>
                                                  formatNumber(
                                                val,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.commaDecimal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 390.0,
                                  height: 330.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 390.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Text(
                                          'Luminosidad ambiente',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 14.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 369.0,
                                        height: 280.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_valores_maximos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFFCB282B),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4B2DA425),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_valores_minimos''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF3125A4),
                                                barWidth: 2.0,
                                                isCurved: true,
                                                dotData: FlDotData(show: false),
                                                belowBarData: BarAreaData(
                                                  show: true,
                                                  color: Color(0x4C396BEF),
                                                ),
                                              ),
                                            ),
                                            FFLineChartData(
                                              xData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_fechas_largas''',
                                              ),
                                              yData: getJsonField(
                                                rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                    .jsonBody,
                                                r'''$.LUMINOSIDAD.AMBIENTE.lista_valores''',
                                              ),
                                              settings: LineChartBarData(
                                                color: Color(0xFF9D25A4),
                                                barWidth: 2.0,
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(
                                            title: 'Fecha',
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          yAxisLabelInfo: AxisLabelInfo(
                                            title: getJsonField(
                                              rowAvgFromPlantAgroupByIntervalsToGraphResponse
                                                  .jsonBody,
                                              r'''$.LUMINOSIDAD.AMBIENTE.unidad_medida.nombre''',
                                            ).toString(),
                                            titleTextStyle: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                            showLabels: true,
                                            labelTextStyle: TextStyle(),
                                            labelInterval: 50.0,
                                            labelFormatter: LabelFormatter(
                                              numberFormat: (val) =>
                                                  formatNumber(
                                                val,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.commaDecimal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
