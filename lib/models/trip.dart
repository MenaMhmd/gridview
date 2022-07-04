import 'package:flutter/material.dart';

enum Season { Winter, Spring, Summer, Autumn }

enum TripType { Exploration, Recovery, Activities, Therapy }

class Trip {
  final String id;
  final String title;
  final String imageUrl;
  final Season season;
  final List<String> activities;
  final List<String> program;
  final List<String> categories;
  final int duration;
  final TripType tripType;
  final bool isInWinter;
  final bool isInSummer;
  final bool isForFamilies;
  Trip({
        required this.tripType,
        required this.season,
        required this.id,
        required this.title,
        required this.imageUrl,
        required this.categories,
        required this.duration,
        required this.activities,
        required this.isForFamilies,
        required this.isInSummer,
        required this.isInWinter,
        required this.program,
      });



}
