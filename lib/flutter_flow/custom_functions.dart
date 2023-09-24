import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? randomArithmeticOperator() {
  final random = math.Random();
  final isAddition = random.nextBool();
  return isAddition ? '+' : '-';
}

int? calculateResult(
  int firstNumber,
  int secondNumber,
  String arithmeticOperator,
) {
  if (arithmeticOperator == "-") {
    return firstNumber - secondNumber;
  } else {
    return firstNumber + secondNumber;
  }
}
