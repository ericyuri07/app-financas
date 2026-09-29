/// Validações reaproveitáveis dos formulários.
///
/// Cada função devolve `null` quando o valor é válido e uma mensagem de erro
/// quando não é — exatamente o contrato que o `TextFormField` espera em
/// `validator:`.
abstract final class Validators {
  static final RegExp _emailPattern = RegExp(r'^[\w.\-+]+@[\w\-]+\.[\w\-.]+$');

  static String? required(String? value, {String field = 'Este campo'}) {
    if (value == null || value.trim().isEmpty) {
      return '$field é obrigatório.';
    }
    return null;
  }

  static String? email(String? value) {
    final String? empty = required(value, field: 'O e-mail');
    if (empty != null) return empty;

    if (!_emailPattern.hasMatch(value!.trim())) {
      return 'Informe um e-mail válido.';
    }
    return null;
  }

  static String? password(String? value, {int minLength = 8}) {
    final String? empty = required(value, field: 'A senha');
    if (empty != null) return empty;

    if (value!.length < minLength) {
      return 'A senha precisa ter ao menos $minLength caracteres.';
    }
    return null;
  }

  static String? passwordConfirmation(String? value, String original) {
    if (value != original) {
      return 'As senhas não conferem.';
    }
    return null;
  }

  static String? amount(String? value) {
    final String? empty = required(value, field: 'O valor');
    if (empty != null) return empty;

    final double? parsed = double.tryParse(
      value!.replaceAll('.', '').replaceAll(',', '.'),
    );

    if (parsed == null) return 'Informe um valor numérico.';
    if (parsed <= 0) return 'O valor precisa ser maior que zero.';
    return null;
  }
}
