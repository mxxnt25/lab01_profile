import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab02_gpa/main.dart';

// Widget tests for the layout: portrait (cards stacked) and landscape (cards
// side by side). A RenderFlex overflow (the yellow-black stripes) makes a
// test fail on its own, so these tests also prove that nothing overflows.
// The group is skipped until Step 5: delete the `skip:` part, then run
// `flutter test`.
Future<void> pumpAt(WidgetTester tester, Size size) async {
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = size; // logical size, because the ratio is 1
  addTearDown(tester.view.reset);
  await tester.pumpWidget(const GradeApp());
}

const portrait = Size(360, 780);
const landscape = Size(844, 390);

void main() {
  group('screen (Steps 3-5)', () {
    testWidgets('portrait: title with Lab L2, average, three cards stacked',
        (tester) async {
      await pumpAt(tester, portrait);
      expect(find.textContaining('Lab L2'), findsOneWidget);
      expect(find.text('Average: 71.3 · B'), findsOneWidget);
      expect(find.byType(ResultCard), findsNWidgets(3));
      final a = tester.getTopLeft(find.byType(ResultCard).at(0));
      final b = tester.getTopLeft(find.byType(ResultCard).at(1));
      expect(b.dy, greaterThan(a.dy)); // below
      expect(b.dx, a.dx); // same column
      expect(tester.takeException(), isNull);
    });

    testWidgets('grades and nickname are shown', (tester) async {
      await pumpAt(tester, portrait);
      expect(find.text('A'), findsOneWidget);
      expect(find.text('B+'), findsOneWidget);
      expect(find.text('F'), findsOneWidget);
      expect(find.text('Chai'), findsOneWidget); // nickname, not the name
      expect(find.text('Score: 79.5'), findsOneWidget);
    });

    testWidgets('landscape: cards side by side, no overflow', (tester) async {
      await pumpAt(tester, landscape);
      final a = tester.getTopLeft(find.byType(ResultCard).at(0));
      final b = tester.getTopLeft(find.byType(ResultCard).at(1));
      expect(b.dy, a.dy); // same row
      expect(b.dx, greaterThan(a.dx)); // to the right
      expect(tester.takeException(), isNull);
    });

    testWidgets('a long name wraps inside its card (Expanded)', (tester) async {
      await pumpAt(tester, landscape);
      final name = find.textContaining('Supitcha');
      final card = find.ancestor(of: name, matching: find.byType(Card));
      expect(tester.getRect(card).contains(tester.getBottomRight(name)), isTrue);
      expect(tester.takeException(), isNull);
    });
  });
}
