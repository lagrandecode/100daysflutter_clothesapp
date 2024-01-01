import 'package:clothesapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [CustomAppBar(),SearchBar()],
        ),
      ),
    );
  }
}
