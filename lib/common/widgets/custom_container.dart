import 'package:flutter/material.dart';
import 'package:lion_project_5/common/services/xylophone_services.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String note;

  const CustomContainer({
    super.key,
    required this.color,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.5),
          onTap: () => _playNote(note),
          child: Ink(
            color: color,
          ),
        ),
      ),
    );
  }

  void _playNote(String note) {
    XylophoneServices.playNote(note);
  }
}
