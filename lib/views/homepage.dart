import 'package:eid_mubarak/global_widgets/custom_background.dart';
import 'package:eid_mubarak/global_widgets/delay_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_text/stylish_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              LinearMovingText(
                'Eid-Al-Adha',
                duration: const Duration(milliseconds: 1800),
                style: GoogleFonts.kaushanScript(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 188, 179, 1),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              DelayWidget(
                delayTimeInSecond: 2,
                child: FadeText(
                  'Mubarak',
                  style: GoogleFonts.merienda(
                    textStyle: const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 128, 51, 7),
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              DelayWidget(
                delayTimeInSecond: 2,
                child: TypewriterText(
                  'May Allah accept your sacrifice and bless you with His mercy.',
                  duration: const Duration(milliseconds: 160),
                  style: GoogleFonts.barlowSemiCondensed(),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              DelayWidget(
                delayTimeInSecond: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DelayWidget(
                      child: BounceOutText(
                        '2024',
                        style: GoogleFonts.aBeeZee(),
                      ),
                    ),
                    OscillateText(
                      '-Mahbub Al Hasan',
                      style: GoogleFonts.satisfy(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 26, 4, 95))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
