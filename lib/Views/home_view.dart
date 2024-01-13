import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/Call%20To%20Action/call_to_action.dart';
import 'package:web_portfolio/Widgets/Centered%20View/centered_view.dart';
import 'package:web_portfolio/Widgets/Main%20Details%20View/main_details_view.dart';
import 'package:web_portfolio/Widgets/Navigation%20Bar/navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            CustomNavigationBar(),
            Expanded(
              child: Row(
                children: [
                  MainDetailsView(),
                  Expanded(
                      child: Center(
                          child: CallToAction(
                    title: 'Proceed',
                  ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
