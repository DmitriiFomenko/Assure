import 'package:assure/generated/l10n.dart';
import 'package:assure/models/card_test_short.dart';
import 'package:assure/pages/main/widgets/card_test.dart';
import 'package:assure/pages/main/widgets/main_appbar.dart';
import 'package:assure/protos/generated/server.pb.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:assure/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CardTestShort> cardTestShort = [];

  Future<void> loadTests() async {
    final questions = await server.getQuestion(QuestionGetProto());
    cardTestShort.clear();
    cardTestShort.addAll(
      questions.questionDescriptionProto.map(
        (e) => CardTestShort(
          title: e.title + e.id,
          description: e.description,
          username: e.author,
          date: e.date,
          countPasses: e.countPasses.toString(),
          rating: e.rating.toString(),
          id: e.id,
        ),
      ),
    );
    setState(() {});
  }

  @override
  void initState() {
    loadTests();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(onRefresh: () {
        loadTests();
      }),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Material(
                    child: InkWell(
                      onTap: () async {
                        final question = await server.getIdQuestion(
                          QuestionIdGetProto(id: cardTestShort[index].id),
                        );
                        Navigator.of(context)
                            .pushNamed(NameRoutes.test, arguments: question);
                      },
                      child: CardTest(
                        cardTestShort: cardTestShort[index],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: cardTestShort.length,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(NameRoutes.newTest);
        },
        label: Text(
          S.of(context).create_test,
          maxLines: 1,
        ),
      ),
    );
  }
}
