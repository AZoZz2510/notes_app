import 'package:flutter/material.dart';
import 'package:notes_app/core/widgets/custom_search_icon.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  // ضيف دي عشان السيرش
  final void Function(String)? onSearchChanged;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
    this.onSearchChanged,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isSearching = false; // متغير يحدد هل إحنا في وضع السيرش ولا لا

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isSearching
            ? Expanded(
          child: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'Search notes...',
              border: InputBorder.none,
            ),
            onChanged: widget.onSearchChanged, // بيبعت الكلمة للكيوبيت
          ),
        )
            : Text(
          widget.title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        CustomIcon(
          icon: isSearching ? Icons.close : widget.icon,
          onPressed: () {
            if (widget.onSearchChanged != null) {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  // لو قفل السيرش، بنرجع كل النوتس
                  widget.onSearchChanged!("");
                }
              });
            } else {
              widget.onPressed?.call();
            }
          },
        ),
      ],
    );
  }
}