import 'package:assure/generated/l10n.dart';
import 'package:assure/pages/new_test/models/controllers_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnswerColumn extends StatelessWidget {
  const AnswerColumn({
    super.key,
    required this.controllersAnswer,
    required this.onChangeIsEnd,
    required this.hasScore,
  });

  final ControllersAnswer controllersAnswer;
  final void Function(bool) onChangeIsEnd;
  final bool hasScore;

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
    if (!controllersAnswer.isEnd) {
      final index = int.tryParse(controllersAnswer.controllerResult.text);
      if (index == null || index < 0) {
        controllersAnswer.controllerResult.clear();
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: controllersAnswer.controllerAnswer,
          decoration: textFieldDecoration(labelText: S.of(context).answer),
          maxLength: 64,
        ),
        if (hasScore)
          TextFormField(
            controller: controllersAnswer.controllerScore,
            decoration: textFieldDecoration(labelText: S.of(context).score),
            maxLength: 6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[\d\.]')),
            ],
          ),
        TextFormField(
          controller: controllersAnswer.controllerResult,
          decoration: textFieldDecoration(
              labelText: controllersAnswer.isEnd
                  ? S.of(context).result
                  : S.of(context).move_to_page),
          keyboardType: controllersAnswer.isEnd ? null : TextInputType.number,
          inputFormatters: controllersAnswer.isEnd
              ? null
              : [
                  FilteringTextInputFormatter.allow(RegExp(r'\d')),
                ],
          maxLength: controllersAnswer.isEnd ? 64 : 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.of(context).end_test),
            Switch(
              value: controllersAnswer.isEnd,
              onChanged: (value) {
                onChangeIsEnd(value);
              },
            ),
          ],
        ),
      ],
    );
  }
}
