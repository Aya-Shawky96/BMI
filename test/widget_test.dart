import 'package:bmi_1/bmi1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('BMI calculation works', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(BMI_1());

    // Find the input fields and the button
    final heightField = find.byType(TextField).at(0);
    final weightField = find.byType(TextField).at(1);
    final calculateButton = find.byType(ElevatedButton);

    // Enter height and weight values
    await tester.enterText(heightField, '1.75'); // Height in meters
    await tester.enterText(weightField, '70'); // Weight in kg

    // Tap the calculate button
    await tester.tap(calculateButton);

    // Rebuild the widget with the new state
    await tester.pump();

    // Check if the result text is displayed correctly
    expect(find.text("Your BMI is: 22.86"), findsOneWidget);
  });
}
