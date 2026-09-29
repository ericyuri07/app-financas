/// Caminhos e nomes das rotas do app.
///
/// Nunca escreva o caminho como string literal ao navegar: use
/// `context.goNamed(AppRoutes.incomes)`. Assim, renomear uma rota é uma
/// mudança em um arquivo só.
abstract final class AppRoutes {
  // Autenticação
  static const String signIn = 'sign-in';
  static const String signInPath = '/login';

  static const String signUp = 'sign-up';
  static const String signUpPath = '/cadastro';

  // Abas principais (dentro do shell com bottom navigation)
  static const String home = 'home';
  static const String homePath = '/inicio';

  static const String incomes = 'incomes';
  static const String incomesPath = '/receitas';

  static const String bills = 'bills';
  static const String billsPath = '/contas';

  // Formulários (rotas filhas — abrem por cima das abas)
  static const String incomeForm = 'income-form';
  static const String incomeFormPath = 'nova';

  static const String billForm = 'bill-form';
  static const String billFormPath = 'nova';
}
