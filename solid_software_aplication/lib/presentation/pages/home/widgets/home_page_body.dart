import 'package:flutter/material.dart';
import 'package:solid_software_aplication/presentation/common/style.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.hello,
        style: AppTextStyles.title(
          color: AppColors.black,
        ),
      ),
    );
  }
}
