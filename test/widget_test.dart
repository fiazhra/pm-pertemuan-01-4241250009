import 'package:flutter_test/flutter_test.dart';
import 'package:hello_unimed/main.dart';

void main() {
  testWidgets('Menampilkan teks Hello, World!', (WidgetTester tester) async {
    // Membangun aplikasi dengan widget utama HelloApp
    await tester.pumpWidget(const HelloApp());

    // Memastikan teks 'Hello, World!' muncul di layar
    expect(find.text('Hello, World!'), findsOneWidget);
  });
}