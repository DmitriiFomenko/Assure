// ignore_for_file: use_build_context_synchronously
import 'package:assure/generated/l10n.dart';
import 'package:assure/main.dart';
import 'package:assure/models/account.dart';
import 'package:assure/pages/new_test/models/card_question_model.dart';
import 'package:assure/pages/new_test/models/controllers_question.dart';
import 'package:assure/pages/new_test/widgets/answer_column.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:assure/utils/utils.dart';
import 'package:flutter/material.dart';

class NewTestPage extends StatefulWidget {
  const NewTestPage({super.key});

  @override
  State<NewTestPage> createState() => _NewTestPageState();
}

class _NewTestPageState extends State<NewTestPage> {
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

  List<CardQuestionModel> cardQuestionModel = [];

  TextEditingController controllerTitle = TextEditingController();
  TextEditingController controllerDescription = TextEditingController();

  @override
  void dispose() {
    controllerTitle.dispose();
    controllerDescription.dispose();
    for (var page in cardQuestionModel) {
      page.pageControllers.dispose();
    }
    super.dispose();
  }

  Future<void> sendQuestion() async {
    String title = controllerTitle.text;
    String description = controllerDescription.text;
    if (!getIt.isRegistered<Account>()) return;
    final account = getIt.get<Account>();
    final questionCreate = QuestionCreateProto(
      account: AccountProto(login: account.login, password: account.password),
      description: QuestionDescriptionProto(
          author: account.login, title: title, description: description),
      questionPageProto: [],
      listResult: [],
    );

    for (var i = 0; i < cardQuestionModel.length; i++) {
      final questionPage = QuestionPageProto(
        question: cardQuestionModel[i].pageControllers.controllerQuestion.text,
        listAnswers: [],
      );
      for (var j = 0;
          j < cardQuestionModel[i].pageControllers.listControllersAnswer.length;
          j++) {
        final controllerAnswer =
            cardQuestionModel[i].pageControllers.listControllersAnswer[j];

        if (!controllerAnswer.isEnd &&
            (int.tryParse(controllerAnswer.controllerResult.text) ?? 1000 - 1) >
                cardQuestionModel.length) {
          showSnackBar(context,
              text:
                  'На странице $i, ответ $j переводит на неправильную страницу');
          return;
        }
        final result = controllerAnswer.controllerResult.text;
        if (controllerAnswer.isEnd && result.isNotEmpty) {
          if (!questionCreate.listResult.contains(result)) {
            questionCreate.listResult.add(result);
          }
        }

        final answerProto = AnswerProto(
          answer: controllerAnswer.controllerAnswer.text,
          result: controllerAnswer.controllerResult.text,
          score: controllerAnswer.controllerScore.text,
          isEnd: controllerAnswer.isEnd,
        );
        questionPage.listAnswers.add(answerProto);
      }
      questionCreate.questionPageProto.add(questionPage);
    }

    makeRequest(context, () async {
      final result = await server.createQuestion(questionCreate);
      bool response = result.created;
      if (response) {
        showSnackBar(context, text: S.of(context).test_created);
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).creating_test),
        actions: [
          IconButton(
              onPressed: cardQuestionModel.isNotEmpty &&
                      controllerTitle.text.isNotEmpty &&
                      controllerDescription.text.isNotEmpty
                  ? () async {
                      await sendQuestion();
                    }
                  : null,
              icon: const Icon(Icons.check)),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: controllerTitle,
                      decoration:
                          textFieldDecoration(labelText: S.of(context).title),
                      maxLength: 64,
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: controllerDescription,
                      decoration: textFieldDecoration(
                          labelText: S.of(context).description),
                      maxLength: 128,
                    ),
                    const SizedBox(height: 8),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: cardQuestionModel.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(S.of(context).question_index(index)),
                                      if (cardQuestionModel.length - 1 ==
                                          index) ...[
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {
                                            cardQuestionModel.removeLast();
                                            setState(() {});
                                          },
                                          icon: const Icon(Icons.delete),
                                        )
                                      ],
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: cardQuestionModel[index]
                                        .pageControllers
                                        .controllerQuestion,
                                    decoration: textFieldDecoration(
                                        labelText: S.of(context).question),
                                    maxLength: 64,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(S.of(context).has_score),
                                      Switch(
                                          value:
                                              cardQuestionModel[index].hasScore,
                                          onChanged: (value) {
                                            setState(() {
                                              cardQuestionModel[index]
                                                  .hasScore = value;
                                            });
                                          }),
                                    ],
                                  ),
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: cardQuestionModel[index]
                                        .pageControllers
                                        .listControllersAnswer
                                        .length,
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                      height: 16,
                                      thickness: 2,
                                    ),
                                    itemBuilder: (context, indexAnswer) {
                                      final answer = cardQuestionModel[index]
                                          .pageControllers
                                          .listControllersAnswer[indexAnswer];
                                      return AnswerColumn(
                                        hasScore:
                                            cardQuestionModel[index].hasScore,
                                        onChangeIsEnd: (value) {
                                          setState(() {
                                            answer.isEnd = value;
                                          });
                                        },
                                        controllersAnswer: answer,
                                      );
                                    },
                                  ),
                                  FloatingActionButton.extended(
                                    backgroundColor: Colors.blueAccent,
                                    onPressed: () {
                                      cardQuestionModel[index]
                                          .pageControllers
                                          .listControllersAnswer
                                          .add(ControllersAnswer.init());
                                      setState(() {});
                                    },
                                    heroTag: 'tag: $index',
                                    label: Text(
                                      S.of(context).add_answer,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                    const SizedBox(height: 24),
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          cardQuestionModel.add(
                            CardQuestionModel(
                              pageControllers: QuestionPageControllers.init(),
                              hasScore: false,
                            ),
                          );
                        });
                      },
                      label: Text(
                        S.of(context).add_question,
                        maxLines: 1,
                      ),
                      heroTag: S.of(context).add_question,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
