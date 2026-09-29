import 'package:flutter/material.dart';

/// Cabeçalho de seção com título à esquerda e ação opcional à direita —
/// o padrão "Próximos vencimentos … Ver todas" do wireframe.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    this.actionLabel,
    this.onActionPressed,
    super.key,
  });

  final String title;
  final String? actionLabel;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        if (actionLabel != null)
          TextButton(onPressed: onActionPressed, child: Text(actionLabel!)),
      ],
    );
  }
}
