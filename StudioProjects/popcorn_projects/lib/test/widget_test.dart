import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // สร้าง widget
    await tester.pumpWidget(MyApp());


    expect(find.text('0'), findsOneWidget);


    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();


    expect(find.text('1'), findsOneWidget);
  });
}
