import 'package:adoptme/components/appbar/app_bar.dart';
import 'package:adoptme/components/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cScaffoldColor,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: const [
            Text('Teste'),
          ],
        ),
      ),
    );
  }
}
