import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Este es Un Alert Android'),
          content: const Column(mainAxisSize: MainAxisSize.min, children: [
            Text('Este es el conteido del AlertDialog'),
            SizedBox(
              height: 20,
            ),
            FlutterLogo(
              size: 100,
            )
          ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            )
          ],
        );
      },
    );
  }

  void displayDialogIOS(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Este es Un Alert IOS'),
          content: const Column(mainAxisSize: MainAxisSize.min, children: [
            Text('Este es el conteido del AlertDialog'),
            SizedBox(
              height: 20,
            ),
            FlutterLogo(
              size: 100,
            )
          ]),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              label: const Text('Mostar Alerta'),
              icon: const Icon(Icons.android),
              onPressed: () => displayDialogAndroid(context),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'iOS',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(' Mostar Alerta'),
                ],
              ),
              onPressed: () => displayDialogIOS(context),
            ),
          ],
        ),
      ),
    );
  }
}
