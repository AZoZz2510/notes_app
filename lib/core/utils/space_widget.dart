import 'package:flutter/cupertino.dart';
import 'package:notes_app/core/utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  final double? value;
  const HorizontalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}


class VerticalSpace extends StatelessWidget {
  final double? value;
  const VerticalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
