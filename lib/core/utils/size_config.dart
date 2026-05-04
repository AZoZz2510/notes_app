import 'package:flutter/cupertino.dart';

class SizeConfig {
  // متغيرات ثابتة (Static) عشان نقدر نوصلها من أي مكان في الأبلكيشن بدون ما ناخد Instance من الكلاس
  static double? screenWidth;    // عرض الشاشة الكلي
  static double? screenHeight;   // ارتفاع الشاشة الكلي
  static double? defaultSize;    // القيمة اللي هنستخدمها كـ "وحدة قياس" أساسية لباقي العناصر
  static Orientation? orientation; // عشان نعرف الجهاز بالطول (Portrait) ولا بالعرض (Landscape)

  // الدالة اللي بنناديها مرة واحدة بس في بداية أول شاشة (زي الـ Splash) عشان نحسب المقاسات
  void init(BuildContext context) {
    // MediaQuery بتجيب لنا بيانات الشاشة الفعلية من الـ BuildContext
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    // هنا بنحدد قيمة الـ defaultSize بناءً على وضع الشاشة
    // لو الموبايل بالعرض، بنحسب النسبة من الارتفاع، ولو بالطول بنحسبها من العرض
    // رقم 0.024 ده رقم تجريبي (Constant) بيخلي الـ 1 unit بتساوي تقريباً 10 بيكسل في الشاشات القياسية
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;

    // بنطبع القيمة عشان نتأكد إن الحسابات تمت صح في الـ Debug Console
    print("this is the default size $defaultSize");
  }
}