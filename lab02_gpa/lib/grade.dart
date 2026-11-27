// Lab L2 · grade logic. Pure Dart: no widgets, so it is easy to trace and
// to unit-test (test/grade_test.dart).
//
// The bodies below are placeholders so that the project and the tests
// compile. Replace them as the lab slides say.

// TODO(Step 1): Write gradeFor() with the COE67-332 grading scale:
//   A 80–100 · B+ 75–<80 · B 70–<75 · C+ 65–<70 · C 60–<65 ·
//   D+ 55–<60 · D 50–<55 · F below 50
// 1. If score < 0 or score > 100: throw RangeError.range(score, 0, 100, 'score');
// 2. Then one `if (score >= …) return '…';` per band, from A down to D.
// 3. Last line: return 'F';
// Then delete the `skip:` of the gradeFor group in test/grade_test.dart.
String gradeFor(double score) {
  if (score < 0 || score > 100) {
    throw RangeError.range(score, 0, 100, 'score');
  }
  if (score >= 80) return 'A';
  if (score >= 75) return 'B+';
  if (score >= 70) return 'B';
  if (score >= 65) return 'C+';
  if (score >= 60) return 'C';
  if (score >= 55) return 'D+';
  if (score >= 50) return 'D';
  return 'F';
}

/// One student's result. The fields and the constructor are given.
class Student {
  const Student({required this.name, required this.score, this.nickname});

  final String name;
  final double score;

  /// Optional: may be null.
  final String? nickname;

  // TODO(Step 2): return the nickname, or the name when nickname is null.
  // One expression with ?? (no if needed).
  String get displayName => nickname ?? name;

  // TODO(Step 2): return gradeFor(score).
  String get grade => gradeFor(score);
}

// TODO(Step 2): return the mean score of [students]; 0 for an empty list.
// Use a for-in loop to add up s.score, then divide by students.length.
// Then delete the `skip:` of the Student group in test/grade_test.dart.
double average(List<Student> students) {
  if (students.isEmpty) return 0;
  var total = 0.0;
  for (final s in students) {
    total += s.score;
  }
  return total / students.length;
}
