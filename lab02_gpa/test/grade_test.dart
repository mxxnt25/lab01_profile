import 'package:flutter_test/flutter_test.dart';
import 'package:lab02_gpa/grade.dart';

// Unit tests for lib/grade.dart. They run on the PC, no device needed.
// Each group is skipped until you finish its step: delete the `skip:` part of
// a group when the TODO it names is done, then run `flutter test`.
void main() {
  group('gradeFor (Step 1)', () {
    test('normal: 85 gives A', () {
      expect(gradeFor(85), 'A');
    });

    test('boundary: 100 and 80 give A, 79.9 gives B+', () {
      expect(gradeFor(100), 'A');
      expect(gradeFor(80), 'A');
      expect(gradeFor(79.9), 'B+');
    });

    test('band edges: 75 B+, 74.9 B, 70 B, 65 C+, 60 C, 55 D+, 50 D', () {
      expect(gradeFor(75), 'B+');
      expect(gradeFor(74.9), 'B');
      expect(gradeFor(70), 'B');
      expect(gradeFor(69.9), 'C+');
      expect(gradeFor(65), 'C+');
      expect(gradeFor(60), 'C');
      expect(gradeFor(59.9), 'D+');
      expect(gradeFor(55), 'D+');
      expect(gradeFor(54.9), 'D');
      expect(gradeFor(50), 'D');
    });

    test('boundary: 49.9 and 0 give F', () {
      expect(gradeFor(49.9), 'F');
      expect(gradeFor(0), 'F');
    });

    test('failure: -1 and 100.5 throw a RangeError', () {
      expect(() => gradeFor(-1), throwsRangeError);
      expect(() => gradeFor(100.5), throwsRangeError);
    });
  });

  group('Student and average (Step 2)', () {
    test('displayName is the nickname when there is one', () {
      const s = Student(name: 'Somchai Jaidee', nickname: 'Chai', score: 79.5);
      expect(s.displayName, 'Chai');
      expect(s.grade, 'B+');
    });

    test('displayName falls back to the name when nickname is null', () {
      const s = Student(name: 'Nok Srisuk', score: 85);
      expect(s.displayName, 'Nok Srisuk');
      expect(s.grade, 'A');
    });

    test('average of 80 and 70 is 75; an empty list gives 0', () {
      const a = Student(name: 'A', score: 80);
      const b = Student(name: 'B', score: 70);
      expect(average([a, b]), 75);
      expect(average([]), 0);
    });
  }, skip: 'TODO(Step 2): remove this skip when Student and average() are written');
}
