import 'package:flutter_test/flutter_test.dart';
import 'package:student_profile_app/main.dart';

void main() {
  testWidgets('App loads test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Student Profile'), findsOneWidget);
  });
}