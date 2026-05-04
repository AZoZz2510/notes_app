// import 'package:flutter/material.dart';
//
// import 'app_colors.dart';
//
// class AppTheme {
//   AppTheme._();
//
//   static ThemeData lightTheme = ThemeData(
//     useMaterial3: true,
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: AppColors.lightBg,
//     primaryColor: AppColors.black,
//     // الـ Scheme لازم يكون Light عشان الـ Brightness فوق Light
//     colorScheme: ColorScheme.light(
//       primary: AppColors.black,
//       surface: AppColors.lightBg,
//     ),
//     textTheme: const TextTheme(
//       bodySmall: TextStyle(color: AppColors.black, fontSize: 14),
//       bodyMedium: TextStyle(color: AppColors.black, fontSize: 16),
//       bodyLarge: TextStyle(color: AppColors.black, fontSize: 18),
//     ),
//   );
//
//   static ThemeData darkTheme = ThemeData(
//     useMaterial3: true,
//     brightness: Brightness.dark,
//     scaffoldBackgroundColor: AppColors.darkBg,
//     primaryColor: AppColors.darkPink,
//     // التعديل هنا: غيرنا light لـ dark عشان تطابق الـ Brightness اللي فوق
//     colorScheme: const ColorScheme.dark(
//       primary: AppColors.darkPink,
//       surface: AppColors.darkBg,
//       onSurface: AppColors.white,
//     ),
//     textTheme: const TextTheme(
//       bodySmall: TextStyle(color: AppColors.white, fontSize: 14),
//       bodyMedium: TextStyle(color: AppColors.white, fontSize: 16),
//       bodyLarge: TextStyle(color: AppColors.white, fontSize: 18),
//     ),
//   );
// }