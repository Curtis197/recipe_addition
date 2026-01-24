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
