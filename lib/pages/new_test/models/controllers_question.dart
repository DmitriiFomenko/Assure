import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ControllersAnswer extends Equatable {
  ControllersAnswer(
      {required this.controllerAnswer,
      required this.controllerResult,
      required this.controllerScore,
      required this.isEnd});

  ControllersAnswer.init()
      : controllerAnswer = TextEditingController(),
        controllerScore = TextEditingController(),
        controllerResult = TextEditingController(),
        isEnd = false;

  final TextEditingController controllerAnswer;
  final TextEditingController controllerScore;
  final TextEditingController controllerResult;
  bool isEnd;

  void dispose() {
    controllerAnswer.dispose();
    controllerResult.dispose();
    controllerScore.dispose();
  }

  @override
  List<Object?> get props =>
      [controllerAnswer, controllerScore, controllerResult, isEnd];
}

class QuestionPageControllers extends Equatable {
  const QuestionPageControllers({
    required this.controllerQuestion,
    required this.listControllersAnswer,
  });
  final TextEditingController controllerQuestion;
  final List<ControllersAnswer> listControllersAnswer;

  QuestionPageControllers.init()
      : controllerQuestion = TextEditingController(),
        listControllersAnswer = [ControllersAnswer.init()];

  void dispose() {
    controllerQuestion.dispose();

    for (var controller in listControllersAnswer) {
      controller.dispose();
    }
  }

  @override
  List<Object?> get props => [controllerQuestion, listControllersAnswer];
}
