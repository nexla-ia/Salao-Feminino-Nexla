// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:salao_nexla_feminino/main.dart';

void main() {
  testWidgets('App builds without exceptions', (WidgetTester tester) async {
    FlutterError.onError = (FlutterErrorDetails details) {};
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();
  });
}
