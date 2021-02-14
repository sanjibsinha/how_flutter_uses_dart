import 'package:flutter/material.dart';

/// a function to iterate chips dynamically
/// instead of mapping them to list
Iterable<Chip> iterateTags(List<String> items) sync* {
  for (var item in items) {
    yield Chip(
      label: Text(item),
    );
  }
}
