import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing_example/login_screen.dart'; // Adjust the path if needed

void main() {
  testWidgets('LoginScreen UI test', (WidgetTester tester) async {
    // Wrap in MaterialApp for context support
    await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );

    // Find the widgets
    final usernameField = find.byKey(Key('usernameField'));
    final passwordField = find.byKey(Key('passwordField'));
    final loginButton = find.byKey(Key('loginButton'));

    // Verify they exist
    expect(usernameField, findsOneWidget);
    expect(passwordField, findsOneWidget);
    expect(loginButton, findsOneWidget);

    // Interact with the widgets
    await tester.enterText(usernameField, 'test_user');
    await tester.enterText(passwordField, '123456');
    await tester.tap(loginButton);
    await tester.pumpAndSettle(); // Wait for animations/dialogs

    // Check if dialog appears
    expect(find.text('Login pressed'), findsOneWidget);
  });
}
