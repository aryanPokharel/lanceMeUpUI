import 'package:flutter/material.dart';

class LogoutConfirmationToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      backgroundColor: Colors.grey[800],
      content: const Text(
        'Are you sure you want to log out?',
        style: TextStyle(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'LOG OUT',
        textColor: Colors.green,
        onPressed: () {
          // Perform logout action
        },
      ),
    );
  }
}
