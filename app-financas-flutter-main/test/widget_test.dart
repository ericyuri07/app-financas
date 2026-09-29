import 'package:flutter_test/flutter_test.dart';
import 'package:guia_financeiro/app.dart';

void main() {
  testWidgets('o app abre na tela de login', (WidgetTester tester) async {
    await tester.pumpWidget(const GuiaFinanceiroApp());
    await tester.pumpAndSettle();

    expect(find.text('Entrar'), findsOneWidget);
  });
}
