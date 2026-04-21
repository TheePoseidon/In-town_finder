import 'package:flutter_test/flutter_test.dart';
import 'package:city_finder/main.dart';

void main() {
  testWidgets('App launches smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CityFinderApp());
    expect(find.text('Kigali City Finder'), findsOneWidget);
  });
}
