import 'package:flutter/material.dart';

import 'core/constants/app_strings.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';

/// Widget raiz do Guia Financeiro.
///
/// Amarra três coisas: o tema (`AppTheme`), a navegação (`AppRouter`) e o
/// título do app. Nenhuma regra de negócio entra aqui.
class GuiaFinanceiroApp extends StatelessWidget {
  const GuiaFinanceiroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: AppRouter.router,
    );
  }
}
