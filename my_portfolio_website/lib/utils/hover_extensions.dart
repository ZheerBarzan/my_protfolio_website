import 'package:flutter/cupertino.dart';
//
import 'dart:html' as html;

extension HoverExtension on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');
  Widget get showCusrsorOnHover {
    return MouseRegion(
      child: this,
      onHover: (_) => appContainer?.style.cursor = 'pointer',
      onExit: (_) => appContainer?.style.cursor = 'defult',
    );
  }
}
