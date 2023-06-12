import 'package:assure/generated/l10n.dart';
import 'package:assure/models/card_test_short.dart';
import 'package:assure/pages/main/widgets/card_test.dart';
import 'package:assure/pages/main/widgets/main_appbar.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: CardTest(
                      cardTestShort: CardTestShort(
                        title: 'Узнай кто ты по знаку зодиака',
                        description:
                            'Этот тест позволит тебе узнать твой знак задиака по дате рождения',
                        username: 'Dmitrii',
                        date: '03.06.2023',
                        countPasses: '2',
                        rating: '4.0',
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
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
