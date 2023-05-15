import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_software_aplication/presentation/pages/home/home_controller.dart';
import 'package:solid_software_aplication/presentation/pages/home/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (randomColorController) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const IntrinsicHeight(
                  child: HomePageBody(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
