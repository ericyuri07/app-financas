import 'package:flutter/material.dart';

/// Paleta do Guia Financeiro, extraída do wireframe.
///
/// Nenhuma cor deve ser escrita "na mão" dentro das telas: sempre referencie
/// uma constante daqui. Isso mantém o app coerente e facilita trocar a
/// identidade visual em um único lugar.
abstract final class AppColors {
  // Marca
  static const Color primary = Color(0xFF1B8055);
  static const Color primaryDark = Color(0xFF0F5132);
  static const Color primaryLight = Color(0xFFDCF2E6);

  // Superfícies
  static const Color background = Color(0xFFF4F5F6);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceMuted = Color(0xFFF0F1F2);
  static const Color border = Color(0xFFE2E4E7);

  // Texto
  static const Color textPrimary = Color(0xFF1A1D1F);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Status das contas (pendente, a vencer, atrasada, paga)
  static const Color success = Color(0xFF1B8055);
  static const Color successSoft = Color(0xFFDCF2E6);
  static const Color warning = Color(0xFFB45309);
  static const Color warningSoft = Color(0xFFFDF0D5);
  static const Color danger = Color(0xFFC0342B);
  static const Color dangerSoft = Color(0xFFFBE3E1);
  static const Color neutralSoft = Color(0xFFEFF0F1);
}
