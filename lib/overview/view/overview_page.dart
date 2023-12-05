import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OverviewView();
  }
}

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beer App',
        ),
      ),
      body: const Center(
        child: Text('Overview'),
      ),
    );
  }
}
