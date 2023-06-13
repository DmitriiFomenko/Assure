import 'package:assure/generated/l10n.dart';
import 'package:assure/utils/routes/name_routes.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbar({super.key, required this.onRefresh});

  final Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {
              onRefresh();
            },
            icon: const Icon(Icons.refresh)),
        PopupMenuButton(
          onSelected: (value) {
            if (value == 0) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  NameRoutes.setting, (route) => false);
              return;
            }
            if (value == 1) {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(NameRoutes.login, (route) => false);
              return;
            }
          },
          itemBuilder: (context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                value: 0,
                child: Text(S.of(context).setting),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 1,
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
