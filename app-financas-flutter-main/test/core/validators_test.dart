import 'package:flutter_test/flutter_test.dart';
import 'package:guia_financeiro/core/utils/validators.dart';

void main() {
  group('Validators.email', () {
    test('aceita um e-mail bem formado', () {
      expect(Validators.email('ana@exemplo.com'), isNull);
    });

    test('recusa vazio e formato inválido', () {
      expect(Validators.email(''), isNotNull);
      expect(Validators.email('ana@'), isNotNull);
    });
  });

  group('Validators.password', () {
    test('exige o mínimo de caracteres', () {
      expect(Validators.password('1234567'), isNotNull);
      expect(Validators.password('12345678'), isNull);
    });
  });

  group('Validators.amount', () {
    test('aceita valor no formato brasileiro', () {
      expect(Validators.amount('1.200,50'), isNull);
    });

    test('recusa zero, negativo e texto', () {
      expect(Validators.amount('0'), isNotNull);
      expect(Validators.amount('-10'), isNotNull);
      expect(Validators.amount('abc'), isNotNull);
    });
  });
}
