import 'package:flutter/material.dart';

class DelayWidget extends StatefulWidget {
  final Widget child;
  final int? delayTimeInSecond;
  const DelayWidget({super.key, required this.child, this.delayTimeInSecond});

  @override
  State<DelayWidget> createState() => _DelayWidgetState();
}

class _DelayWidgetState extends State<DelayWidget> {
  bool delayCompleted = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: widget.delayTimeInSecond ?? 1), () {
      if (mounted) {
        setState(() {
          delayCompleted = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return delayCompleted ? widget.child : Container();
  }
}
