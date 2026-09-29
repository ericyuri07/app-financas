/// Escala de espaçamentos e raios de borda do app.
///
/// Use sempre estes valores em `padding`, `margin`, `SizedBox` e
/// `BorderRadius`. Números soltos no meio do layout tornam o ajuste fino
/// impossível mais adiante.
abstract final class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double xxl = 32;

  /// Margem lateral padrão das telas.
  static const double screenPadding = 20;
}

abstract final class AppRadius {
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;

  /// Usado em chips e botões totalmente arredondados.
  static const double pill = 999;
}
