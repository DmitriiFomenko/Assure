import 'package:assure/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

void showSnackBar(BuildContext context, {required String text}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  final duration = Duration(milliseconds: 2000 + text.length * 30);

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    margin: const EdgeInsets.all(16),
    content: Text(text),
    duration: duration,
  ));
}

Future<void> makeRequest(
    BuildContext context, Future<void> Function() request) async {
  try {
    await request();
  } catch (e) {
    debugPrint('\nmakeRequest error: $e\n');
    final grpcError = (e as GrpcError);
    switch (grpcError.code) {
      case 4:
        showSnackBar(context, text: S.of(context).failed_connect_server);
        break;
      case 14:
        showSnackBar(context, text: S.of(context).no_internet);
        break;
      default:
        showSnackBar(context, text: '${S.of(context).error}\n$e');
    }
  }
}
