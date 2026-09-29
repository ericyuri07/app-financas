import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/app_routes.dart';
import '../../widgets/screen_placeholder.dart';

/// Lista de contas a pagar (wireframe 4).
class BillsScreen extends StatelessWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contas a Pagar')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(AppRoutes.billForm),
        child: const Icon(Icons.add_rounded),
      ),
      body: const SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.description_outlined,
          title: 'Contas a Pagar',
          steps: <String>[
            'Filtros Todas / Pendentes / Pagas',
            'Cards de resumo: total a pagar e total já pago no mês',
            'Lista com checkbox de pagamento, categoria e AppBadge de situação',
            'Estilo riscado para contas já pagas',
            'Atualização do status direto no Firestore',
          ],
        ),
      ),
    );
  }
}
