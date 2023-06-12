import 'package:assure/pages/new_test/models/controllers_question.dart';
import 'package:equatable/equatable.dart';

class CardQuestionModel extends Equatable {
  CardQuestionModel({
    required this.pageControllers,
    required this.hasScore,
  });

  final QuestionPageControllers pageControllers;
  bool hasScore;

  @override
  List<Object?> get props => [
        hasScore,
        pageControllers,
      ];
}
