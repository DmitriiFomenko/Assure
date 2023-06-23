import 'dart:math';

import 'package:assure/generated/l10n.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
    required this.questionResultProto,
    required this.answer,
    required this.countScore,
  });

  final QuestionResultProto questionResultProto;
  final String answer;
  final double countScore;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  InputDecoration textFieldDecoration({
    required String labelText,
  }) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorsChart = List.generate(
      widget.questionResultProto.variants.length,
      (index) => Colors.primaries[Random().nextInt(Colors.primaries.length)],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).results),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${S.of(context).result}: ${widget.answer}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            if (double.parse(
                                    widget.questionResultProto.scoreSum) !=
                                0) ...[
                              const SizedBox(height: 8),
                              Text(
                                '${S.of(context).count_score}: ${widget.countScore}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${S.of(context).average_score}: ${(double.parse(widget.questionResultProto.scoreSum) / double.parse(widget.questionResultProto.scoreCount)).toStringAsFixed(2)}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ],
                        ),
                      )),
                  const SizedBox(height: 16),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.questionResultProto.variants.length,
                          itemBuilder: (context, index) {
                            final variant =
                                widget.questionResultProto.variants[index];
                            final stat = (int.parse(variant.stats) /
                                    int.parse(
                                        widget.questionResultProto.sumCount) *
                                    100)
                                .toStringAsFixed(2);
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(variant.variant),
                                Text('$stat%'),
                              ],
                            );
                          },
                        ),
                      )),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      SizedBox(
                        height: 280,
                        width: MediaQuery.of(context).size.width - 129,
                        child: PieChart(
                          PieChartData(
                              centerSpaceRadius: 40,
                              sections: List.generate(
                                  widget.questionResultProto.variants.length,
                                  (index) {
                                final value = double.parse((int.parse(widget
                                            .questionResultProto
                                            .variants[index]
                                            .stats) /
                                        int.parse(widget
                                            .questionResultProto.sumCount) *
                                        100)
                                    .toStringAsFixed(2));
                                return PieChartSectionData(
                                  color: colorsChart[index],
                                  value: value,
                                  radius: 75,
                                  titlePositionPercentageOffset: 0.55,
                                );
                              })),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: getTexts(
                            widget.questionResultProto.variants, colorsChart),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> getTexts(
    List<VariantAndStats> variants, List<MaterialColor> colorsChart) {
  final result = <Widget>[];
  for (var i = 0; i < variants.length; i++) {
    result.add(
      Indicator(
        color: colorsChart[i],
        text: variants[i].variant,
        isSquare: true,
      ),
    );
  }
  return result;
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}
