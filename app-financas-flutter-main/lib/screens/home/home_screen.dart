import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../widgets/screen_placeholder.dart';

/// Tela inicial com o resumo do mês (wireframe 2).
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.home_outlined,
          title: AppStrings.tabHome,
          steps: <String>[
            'Saudação com o nome do usuário e ícone de notificações',
            'Card verde com saldo do mês, total de receitas e de contas',
            'Seção "Próximos vencimentos" com as contas mais próximas',
            'Card "Dica do guia" com o percentual da receita comprometido',
          ],
        ),
      ),
    );
  }
}
