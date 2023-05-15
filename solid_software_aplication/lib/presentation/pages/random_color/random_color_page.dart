import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/random_color_controller.dart';
import 'package:solid_software_aplication/presentation/pages/random_color/widgets/random_color_page_body.dart';

class RandomColorPage extends StatelessWidget {
  const RandomColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetX<RandomColorController>(
        builder: (randomColorController) {
          return Scaffold(
            backgroundColor: randomColorController.backgroundColor.value,
            body: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: RandomColorPageBody(
                      randomColorController: randomColorController,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
