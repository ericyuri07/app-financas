import 'package:flutter/material.dart';

import '../../widgets/screen_placeholder.dart';

/// Formulário de nova conta a pagar (wireframe 7).
class BillFormScreen extends StatelessWidget {
  const BillFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nova conta a pagar')),
      body: const SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.receipt_long_outlined,
          title: 'Nova conta a pagar',
          steps: <String>[
            'Campo de valor com máscara de moeda',
            'Campo de descrição e seletor de vencimento',
            'Chips de categoria: Moradia, Serviços, Educação, Cartão, Outros',
            'Switch "Repetir todo mês" para contas recorrentes',
            'Botão "Salvar conta" fixo na base da tela',
          ],
        ),
      ),
    );
  }
}
