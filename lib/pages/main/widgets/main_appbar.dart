import 'package:assure/generated/l10n.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            if (value == 0) {
              Navigator.of(context).pushNamed(NameRoutes.result);
              return;
            }
            if (value == 3) {
              Navigator.of(context).pushNamed(NameRoutes.test);
              return;
            }
            if (value == 1) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  NameRoutes.setting, (route) => false);
              return;
            }
            if (value == 2) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(NameRoutes.login, (route) => false);
              return;
            }
          },
          itemBuilder: (context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                value: 0,
                child: Text(S.of(context).my_tests),
              ),
              PopupMenuItem(
                value: 1,
                child: Text(S.of(context).setting),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 2,
                child: Text(S.of(context).log_out),
              ),
              PopupMenuItem(
                value: 3,
                child: Text(S.of(context).log_out),
              ),
            ];
          },
        ),
      ],
      title: Text(S.of(context).tests),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
