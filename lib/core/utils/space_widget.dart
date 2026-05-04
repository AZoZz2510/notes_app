import 'package:flutter/cupertino.dart';
import 'package:notes_app/core/utils/size_config.dart';

class VerticalSpace extends StatelessWidget {
  final double? value;
  const VerticalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // هنا بنقوله: لو القيمة null، اعتبرها 10 بيكسل كقيمة احتياطية
      height: (SizeConfig.defaultSize ?? 10) * (value ?? 1),
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  final double? value;
  const HorizontalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (SizeConfig.defaultSize ?? 10) * (value ?? 1),
    );
  }
}