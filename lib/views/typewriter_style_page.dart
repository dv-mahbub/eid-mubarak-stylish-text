import 'package:eid_mubarak/global_widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:stylish_text/stylish_text.dart';

class TypeWriterStylePage extends StatefulWidget {
  const TypeWriterStylePage({super.key});

  @override
  State<TypeWriterStylePage> createState() => _TypeWriterStylePageState();
}

class _TypeWriterStylePageState extends State<TypeWriterStylePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackground(
        child: TypewriterText('Eid-Al-Adha\nMubarak'),
      ),
    );
  }
}
