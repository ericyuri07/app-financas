import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';

/// Tom visual de um [AppBadge].
enum BadgeTone { neutral, success, warning, danger }

/// Etiqueta arredondada usada para marcar situações — "Paga", "Pendente",
/// "Amanhã", "Atrasada" — como aparece nas listas do wireframe.
///
/// O widget é genérico de propósito: quem decide qual tom usar para cada
/// situação é a camada de tela, não o widget.
class AppBadge extends StatelessWidget {
  const AppBadge({
    required this.label,
    this.tone = BadgeTone.neutral,
    super.key,
  });

  final String label;
  final BadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final (Color background, Color foreground) = switch (tone) {
      BadgeTone.success => (AppColors.successSoft, AppColors.success),
      BadgeTone.warning => (AppColors.warningSoft, AppColors.warning),
      BadgeTone.danger => (AppColors.dangerSoft, AppColors.danger),
      BadgeTone.neutral => (AppColors.neutralSoft, AppColors.textSecondary),
    };

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.labelSmall?.copyWith(color: foreground),
      ),
    );
  }
}
