import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppColorConstants {
  @Named("transparent")
  Color get transparent => Colors.transparent;

  @Named("white")
  Color get white => Colors.white;

  @Named("black")
  Color get black => Colors.black;
}
