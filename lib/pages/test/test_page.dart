import 'package:assure/main.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.questions});

  final QuestionCreateProto questions;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int indexQuestionUser = 1;
  int indexQuestionReal = 0;

  double countScore = 0;

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        title: Text('Вопрос $indexQuestionUser'),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      widget
                                          .questions
                                          .questionPageProto[indexQuestionReal]
                                          .question,
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: widget
                                  .questions
                                  .questionPageProto[indexQuestionReal]
                                  .listAnswers
                                  .length,
                              itemBuilder: (context, index) {
                                final answer = widget
                                    .questions
                                    .questionPageProto[indexQuestionReal]
                                    .listAnswers[index];
                                return ElevatedButton(
                                  onPressed: () async {
                                    if (answer.isEnd) {
                                      final questionResultProto = await server
                                          .getResultTest(GetResultRequest(
                                        id: widget.questions.description.id,
                                        score: countScore.toString(),
                                        result: answer.result,
                                      ));

                                      Navigator.of(context).popAndPushNamed(
                                          NameRoutes.result,
                                          arguments: [
                                            questionResultProto,
                                            answer.result,
                                            countScore
                                          ]);
                                      return;
                                    }
                                    final result = int.tryParse(answer.result);
                                    if (result == null) return;
                                    indexQuestionReal = result;
                                    countScore +=
                                        double.tryParse(answer.score) ?? 0;
                                    indexQuestionUser++;
                                    setState(() {});
                                  },
                                  child: Text(
                                    answer.answer,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                            ),
                          ],
                        ),
                      )),
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
