import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Container(
          height: 100,
          width: 1507,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            FlutterLogo(),
            Spacer(),
            InkWell(
              child: Text(
                'About Me',
                style: GoogleFonts.montserrat(fontSize: 24),
              ),
            )
          ]),
        );
      },
    );
  }
}
