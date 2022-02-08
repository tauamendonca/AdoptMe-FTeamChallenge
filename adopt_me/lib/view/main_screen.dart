import 'package:adoptme/components/appbar/app_bar.dart';
import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/main_container/main_container.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: cScaffoldColor,
      appBar: CustomAppBar(),
      body: SafeArea(
        child: MainContainerWidget(),
      ),
    );
  }
}
