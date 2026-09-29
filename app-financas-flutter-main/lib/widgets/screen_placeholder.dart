import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_spacing.dart';

/// Marcador temporário das telas que ainda serão construídas em aula.
///
/// Cada tela do projeto nasce com este widget no corpo, listando o que precisa
/// ser implementado. Conforme a turma constrói as features, o placeholder vai
/// sendo substituído pelo layout real — e no fim do semestre este arquivo pode
/// ser apagado.
class ScreenPlaceholder extends StatelessWidget {
  const ScreenPlaceholder({
    required this.title,
    required this.steps,
    this.icon = Icons.construction_rounded,
    super.key,
  });

  /// Nome da tela, como aparece no wireframe.
  final String title;

  /// O que será construído nesta tela ao longo das aulas.
  final List<String> steps;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(AppRadius.md),
              ),
              child: Icon(icon, color: AppColors.primary),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(title, style: textTheme.headlineMedium),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Tela ainda não implementada — vamos construir em aula.',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSpacing.lg),
            for (final String step in steps)
              Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 18,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(child: Text(step, style: textTheme.bodyLarge)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
