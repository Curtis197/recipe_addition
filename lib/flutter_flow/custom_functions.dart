import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<dynamic>? listOfIngredientsJSON(List<IngredientsRow>? ingredientsRow) {
  // transform a List of Row into a Json List {"ingredient_id", "index"}
  if (ingredientsRow == null) return null;
  return ingredientsRow.map((row) {
    return {
      "ingredient_id": row.id,
      "index": row.index,
    };
  }).toList();
}

List<dynamic>? newCustomFunction2(List<StepRow>? step) {
  // return  "steps": [ {"step_id: row.id, "index": indexInList}]  steps is a list of Json indexInList is the index in the list of row
  if (step == null) return null;

  return step.asMap().entries.map((entry) {
    final index = entry.key;
    final row = entry.value;
    return {
      "step_id": row.id,
      "index": index,
    };
  }).toList();
}

List<String>? listofDay(dynamic days) {
  // return the keys of the json  "daily_breakdown": {         "monday": 0,         "tuesday": 0,         "wednesday": 0,         "thursday": 0,         "friday": 0,         "saturday": 0,         "sunday": 0 as a list of string
  if (days is Map<String, dynamic>) {
    return days.keys.toList();
  }
  return null;
}

List<DateTime>? listOfDate(dynamic days) {
  // return those days in date of the ecurrent week return values from "daily_breakdown": {         "monday": 0,         "tuesday": 0,         "wednesday": 0,         "thursday": 0,         "friday": 0,         "saturday": 0,         "sunday": 0 monday = this monday datetime
  DateTime now = DateTime.now();
  DateTime startOfWeek =
      now.subtract(Duration(days: now.weekday - 1)); // Monday
  List<DateTime> weekDays = [];

  for (int i = 0; i < 7; i++) {
    weekDays.add(startOfWeek.add(Duration(days: i)));
  }

  return weekDays;
}

List<int>? listofInt(dynamic value) {
  // return values from "daily_breakdown": {         "monday": 0,         "tuesday": 0,         "wednesday": 0,         "thursday": 0,         "friday": 0,         "saturday": 0,         "sunday": 0 as a ist of int
  if (value is Map<String, dynamic> && value.containsKey('daily_breakdown')) {
    final breakdown = value['daily_breakdown'];
    if (breakdown is Map<String, int>) {
      return [
        breakdown['monday'] ?? 0,
        breakdown['tuesday'] ?? 0,
        breakdown['wednesday'] ?? 0,
        breakdown['thursday'] ?? 0,
        breakdown['friday'] ?? 0,
        breakdown['saturday'] ?? 0,
        breakdown['sunday'] ?? 0,
      ];
    }
  }
  return null;
}

List<DateTime>? listOfDate2(dynamic dailyMeealConsumed) {
  // return a list of date from the json keys list "daily_meals_consumed": {     "2026-02-01": 0,     "2026-02-02": 0,     "2026-02-03": 0,     "2026-02-04": 0}
  List<DateTime>? listOfDate2(dynamic dailyMealConsumed) {
    if (dailyMealConsumed is Map<String, dynamic>) {
      return dailyMealConsumed.keys.map((dateString) {
        return DateTime.parse(dateString);
      }).toList();
    }
    return null;
  }
}

DateTime? newCustomFunction(String? time) {
  // parse a timestamp to a datetime
  if (time == null) return null; // Return null if the input is null
  return DateTime.tryParse(time); // Attempt to parse the timestamp to DateTime
}
