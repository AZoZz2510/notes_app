import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 5,
      width: SizeConfig.defaultSize! * 5,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search_sharp, size: 35),
    );
  }
}
