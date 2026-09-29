import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_strings.dart';
import '../../core/routes/app_routes.dart';
import '../../widgets/screen_placeholder.dart';

/// Lista de receitas do mês (wireframe 3).
class IncomesScreen extends StatelessWidget {
  const IncomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.tabIncomes)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(AppRoutes.incomeForm),
        child: const Icon(Icons.add_rounded),
      ),
      body: const SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.trending_up_rounded,
          title: AppStrings.tabIncomes,
          steps: <String>[
            'Seletor de mês com as setas de navegação',
            'Card com o total recebido e a quantidade de lançamentos',
            'Lista de receitas com ícone por categoria, data e valor',
            'EmptyState quando o mês não tiver lançamentos',
            'Leitura em tempo real da coleção no Firestore',
          ],
        ),
      ),
    );
  }
}
