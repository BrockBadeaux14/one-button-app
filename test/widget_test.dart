import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:one_button_app/main.dart';

void main() {
  testWidgets('shows an enabled Press me button that can be tapped', (
    tester,
  ) async {
    await tester.pumpWidget(const OneButtonApp());

    final button = find.widgetWithText(FilledButton, 'Press me');
    expect(button, findsOneWidget);
    expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

    await tester.tap(button);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(button, findsOneWidget);
  });
}
