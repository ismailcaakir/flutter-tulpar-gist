import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Whooops! Someting went wrong'),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  context.go("/");
                },
                child: const Text('Go to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
