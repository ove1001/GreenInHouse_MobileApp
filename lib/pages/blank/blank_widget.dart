import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blank_model.dart';
export 'blank_model.dart';

class BlankWidget extends StatefulWidget {
  const BlankWidget({Key? key}) : super(key: key);

  @override
  _BlankWidgetState createState() => _BlankWidgetState();
}

class _BlankWidgetState extends State<BlankWidget> {
  late BlankModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankModel());
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
            'Page Title',
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
                  children: [
                    Expanded(
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(RegistrosSensoresGroup
                                      .registrosSensoresGetOneCall
                                      .call(
                                    rsid: FFAppState().rsidPrueba,
                                  )))
                            .future,
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
                          final containerRegistrosSensoresGetOneResponse =
                              snapshot.data!;
                          return Container(
                            width: 409.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  getJsonField(
                                    containerRegistrosSensoresGetOneResponse
                                        .jsonBody,
                                    r'''$.id''',
                                  ).toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Text(
                                  getJsonField(
                                    containerRegistrosSensoresGetOneResponse
                                        .jsonBody,
                                    r'''$.valor''',
                                  ).toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Text(
                                  getJsonField(
                                    containerRegistrosSensoresGetOneResponse
                                        .jsonBody,
                                    r'''$.numero_sensor''',
                                  ).toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        setState(() => _model.apiRequestCompleter = null);
                        await _model.waitForApiRequestCompleted();
                      },
                      text: 'Button',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
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
                        count: _model.countControllerValue ??= 0,
                        updateCount: (count) async {
                          setState(() => _model.countControllerValue = count);
                          setState(() {
                            FFAppState().rsidPrueba =
                                _model.countControllerValue!;
                          });
                        },
                        stepSize: 1,
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 46.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        FFAppState().rsidPrueba.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: RegistrosSensoresGroup
                              .registrosSensoresGetAllCall
                              .call(),
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
                            final listViewRegistrosSensoresGetAllResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final listaRegistros =
                                    listViewRegistrosSensoresGetAllResponse
                                        .jsonBody
                                        .toList()
                                        .take(200)
                                        .toList();
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listaRegistros.length,
                                  itemBuilder: (context, listaRegistrosIndex) {
                                    final listaRegistrosItem =
                                        listaRegistros[listaRegistrosIndex];
                                    return Container(
                                      width: 100.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.id''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.valor''',
                                              ).toString().maybeHandleOverflow(
                                                  maxChars: 5),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.unidad_medida.nombre''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.tipo_sensor.nombre''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.zona_sensor.nombre''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              getJsonField(
                                                listaRegistrosItem,
                                                r'''$.numero_sensor''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FutureBuilder<ApiCallResponse>(
                      future: RegistrosSensoresGroup
                          .registrosSensoresGetAllFromPlantToGraphCall
                          .call(
                        np: 'Mi tomatera',
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
                        final columnRegistrosSensoresGetAllFromPlantToGraphResponse =
                            snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 369.0,
                                  height: 280.0,
                                  child: FlutterFlowLineChart(
                                    data: [
                                      FFLineChartData(
                                        xData: getJsonField(
                                          columnRegistrosSensoresGetAllFromPlantToGraphResponse
                                              .jsonBody,
                                          r'''$.TEMPERATURA.AMBIENTE.lista_fechas''',
                                        ),
                                        yData: getJsonField(
                                          columnRegistrosSensoresGetAllFromPlantToGraphResponse
                                              .jsonBody,
                                          r'''$.TEMPERATURA.AMBIENTE.lista_valores''',
                                        ),
                                        settings: LineChartBarData(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          barWidth: 2.0,
                                          isCurved: true,
                                          dotData: FlDotData(show: false),
                                          belowBarData: BarAreaData(
                                            show: true,
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                          ),
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
                                    axisBounds: AxisBounds(
                                      minY: -5.0,
                                      maxY: 45.0,
                                    ),
                                    xAxisLabelInfo: AxisLabelInfo(
                                      title: 'Fecha',
                                      titleTextStyle: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                      showLabels: true,
                                      labelInterval: 1.0,
                                      labelFormatter: LabelFormatter(
                                        numberFormat: (val) => val.toString(),
                                      ),
                                    ),
                                    yAxisLabelInfo: AxisLabelInfo(
                                      title: getJsonField(
                                        columnRegistrosSensoresGetAllFromPlantToGraphResponse
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
                                        numberFormat: (val) => formatNumber(
                                          val,
                                          formatType: FormatType.custom,
                                          format: '',
                                          locale: '',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 369.0,
                                  height: 280.0,
                                  child: FlutterFlowLineChart(
                                    data: [
                                      FFLineChartData(
                                        xData: getJsonField(
                                          columnRegistrosSensoresGetAllFromPlantToGraphResponse
                                              .jsonBody,
                                          r'''$.HUMEDAD.AMBIENTE.lista_fechas''',
                                        ),
                                        yData: getJsonField(
                                          columnRegistrosSensoresGetAllFromPlantToGraphResponse
                                              .jsonBody,
                                          r'''$.HUMEDAD.AMBIENTE.lista_valores''',
                                        ),
                                        settings: LineChartBarData(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          barWidth: 2.0,
                                          isCurved: true,
                                          dotData: FlDotData(show: false),
                                          belowBarData: BarAreaData(
                                            show: true,
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                          ),
                                        ),
                                      )
                                    ],
                                    chartStylingInfo: ChartStylingInfo(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      showBorder: false,
                                    ),
                                    axisBounds: AxisBounds(
                                      minY: 0.0,
                                      maxY: 100.0,
                                    ),
                                    xAxisLabelInfo: AxisLabelInfo(
                                      title: 'Fecha',
                                      titleTextStyle: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    yAxisLabelInfo: AxisLabelInfo(
                                      title: getJsonField(
                                        columnRegistrosSensoresGetAllFromPlantToGraphResponse
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
                                        numberFormat: (val) => formatNumber(
                                          val,
                                          formatType: FormatType.custom,
                                          format: '',
                                          locale: '',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
