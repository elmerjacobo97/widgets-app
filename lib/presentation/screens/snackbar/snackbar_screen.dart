import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String routeName = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello World!'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: colors.primary,
      // behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Obligar al usuario a cerrar desde los buttons
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Elit occaecat duis anim amet do nisi exercitation ullamco. Deserunt consequat deserunt qui ex nostrud quis. Incididunt quis culpa occaecat aliqua cupidatat mollit excepteur cillum eiusmod magna laborum. Officia nisi id cupidatat laboris sint consectetur in nisi tempor eu minim magna.'),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.of(context).pop();
              context.pop();
            },
            child: const Text('Cancelar'),
          ),
          FilledButton(
              onPressed: () => {
                    context.pop(),
                  },
              child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogs'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                // Mostrar dialog
                showAboutDialog(context: context, children: [
                  const Text(
                      'Sunt ea qui proident eiusmod duis cillum elit dolor proident in deserunt exercitation proident consectetur. Nulla nostrud pariatur qui consectetur eu velit. Duis sit occaecat laborum sunt minim amet enim eu ea culpa et quis esse tempor. Reprehenderit anim incididunt eiusmod ex ullamco dolor irure fugiat aliquip veniam adipisicing consequat.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialog')),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
