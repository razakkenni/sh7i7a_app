import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sh7i7a/controllers/nav_bar_controller.dart';
import 'package:sh7i7a/utils.dart';
import 'package:sh7i7a/widgets/text_button.dart';

class RecommendAnswerScreen extends StatelessWidget {
  const RecommendAnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarController>(
        builder: (context, navBarController, child) {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          navBarController.navigateTo(
                              navBarController.navs[2], 2);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Transform.rotate(
                            angle: pi,
                            child: SvgPicture.asset(
                              getIcon('arrow'),
                              width: 18,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Topic Details',
                        style: TextStyle(
                          fontSize: 24,
                          // color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Spacer(),
                const Text('Answer Here'),
                const Spacer(),
                const Text('Did that help solve your question?'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DinarButton(
                      onPressed: () {},
                      label: 'Yes',
                      width: 60,
                      height: 30,
                    ),
                    const SizedBox(width: 5),
                    DinarButton(
                      onPressed: () {},
                      label: 'No',
                      width: 60,
                      height: 30,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
