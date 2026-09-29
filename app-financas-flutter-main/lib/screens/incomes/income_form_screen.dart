import 'package:flutter/material.dart';

import '../../widgets/screen_placeholder.dart';

/// Formulário de nova receita (wireframe 6).
class IncomeFormScreen extends StatelessWidget {
  const IncomeFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nova receita')),
      body: const SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.add_card_outlined,
          title: 'Nova receita',
          steps: <String>[
            'Campo de valor com máscara de moeda',
            'Campo de descrição e seletor de data de recebimento',
            'Chips de categoria: Trabalho, Extra, Venda, Outros',
            'Botão "Salvar receita" fixo na base da tela',
            'Gravação no Firestore e retorno para a lista',
          ],
        ),
      ),
    );
  }
}
