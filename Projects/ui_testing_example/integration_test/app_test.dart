import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ui_testing_example/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Login Screen Test", (WidgetTester tester) async {
    // Launch the app
    await tester.pumpWidget(MyApp());

    // Enter text
    await tester.enterText(find.byKey(Key('usernameField')), 'test_user');
    await tester.enterText(find.byKey(Key('passwordField')), '123456');

    // Tap the login button
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pumpAndSettle();

    // Verify that the dialog appears
    expect(find.text('Login pressed'), findsOneWidget);
  });
}
