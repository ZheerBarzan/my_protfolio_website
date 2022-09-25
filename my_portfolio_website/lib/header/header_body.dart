import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_portfolio_web/utils/hover_extensions.dart';

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'I\'m a Flutter App ',
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        AutoSizeText(
          'Developer < / >',
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        SizedBox(
          height: isMobile ?? false ? 20 : 37,
        ),
        Text(
          'I have 2 years of experience in mobile development with flutter framework.',
          style: GoogleFonts.montserrat(fontSize: 24),
          maxLines: 3,
        ),
        SizedBox(
          height: isMobile ?? false ? 20 : 40,
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7))),
          color: Colors.redAccent,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: isMobile ?? false ? 10 : 17,
                horizontal: isMobile ?? false ? 8 : 15),
            child: Text(
              'Contact ME',
              style: GoogleFonts.montserrat(
                fontSize: isMobile ? 20 : 24,
                color: Colors.white,
              ),
            ),
          ),
        ).showCusrsorOnHover,
      ],
    );
  }
}
