// Lab L2 · result cards that fit portrait and landscape.
//
// Target widget tree (Steps 3–5):
//   GradePage > Scaffold
//     AppBar > Text('Lab L2 · <your student ID>')
//     Padding(16) > Column
//       Text('Average: …'), SizedBox(height: 16),
//       Expanded > LayoutBuilder > (width > 600 ? Row : Column) of ResultCard
import 'package:flutter/material.dart';

import 'grade.dart';

void main() => runApp(const GradeApp());

class GradeApp extends StatelessWidget {
  const GradeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Lab L2', home: GradePage());
  }
}

/// Made-up data (given). The long name checks that text wraps.
const students = <Student>[
  Student(name: 'Nok Srisuk', score: 85),
  Student(name: 'Somchai Jaidee', nickname: 'Chai', score: 79.5),
  Student(name: 'Supitcha Wongsawat-Rattanaporn Na Ayutthaya', score: 49.5),
];

class GradePage extends StatelessWidget {
  const GradePage({super.key, this.items = students});

  final List<Student> items;

  static const double breakpoint = 600;

  @override
  Widget build(BuildContext context) {
    // TODO(Step 3): Change the title to 'Lab L2 · ' + your student ID.
    // Replace the body with Padding(16) > Column:
    //   Text('Average: ${avg.toStringAsFixed(1)} · ${gradeFor(avg)}')
    //   SizedBox(height: 16)
    //   one ResultCard(student: s) for each student in items
    // (final avg = average(items); goes above `return`.)
    // TODO(Step 5): Wrap the cards in Expanded > LayoutBuilder:
    //   box.maxWidth > breakpoint → Row of Expanded(child: card),
    //   otherwise Column of cards. Then delete the `skip:` in
    //   test/grade_page_test.dart.
    return Scaffold(
      appBar: AppBar(title: const Text('Lab L2 · [ID]')),
      body: const Center(child: Text('TODO: Steps 3–5')),
    );
  }
}

/// One result card.
class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    // TODO(Step 4): Card > Padding(16) > Row:
    //   CircleAvatar(child: Text(student.grade)),
    //   SizedBox(width: 16),
    //   Expanded > Column(crossAxisAlignment: start):
    //     Text(student.displayName), Text('Score: ${student.score.toStringAsFixed(1)}')
    // Try it once WITHOUT Expanded on the long name: you will see the
    // yellow-black overflow stripes. Then put Expanded back.
    return Card(child: Text(student.name)); // placeholder
  }
}
