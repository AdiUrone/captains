import 'package:captains/Formats/wipl.dart';
import 'package:captains/Formats/wodi.dart';
import 'package:captains/Formats/wt20.dart';
import 'package:captains/Formats/wtest.dart';
import 'package:flutter/material.dart';
import 'package:captains/Formats/test.dart';
import 'package:captains/Formats/odi.dart';
import 'package:captains/Formats/t20.dart';
import 'package:captains/Formats/ipl.dart';
void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const Home(),
      '/odi': (context) => const ODI(),
      '/t20': (context) => const T20(),
      '/ipl': (context) => const IPL(),
      '/wtest': (context) => const WTest(),
      '/wodi': (context) => const WODI(),
      '/wt20': (context) => const WT20(),
      '/wipl': (context) => const WIPL(),
    },
  ));
}


