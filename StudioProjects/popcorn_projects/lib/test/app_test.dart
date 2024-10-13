import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:popcorn_projects/main.dart';

import '../components/my_button_dart.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Login flow test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());


    expect(find.text('Welcome back you\'ve been missed'), findsOneWidget);


    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).at(1), '123456');
    await tester.tap(find.byType(MyButton));
    await tester.pumpAndSettle();


    expect(find.text('Intro Page Title'), findsOneWidget);
  });
}
