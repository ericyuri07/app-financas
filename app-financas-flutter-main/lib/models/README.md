# models/

Classes que representam os dados do app — as **entidades** do Guia Financeiro.

Nada de Flutter aqui dentro: um model não importa `material.dart`, não sabe
desenhar e não conversa com o Firebase. Ele só descreve a forma dos dados e
sabe converter-se de/para um mapa.

Modelos previstos para este projeto (criados em aula, um por vez):

| Arquivo             | Representa                                         |
|---------------------|----------------------------------------------------|
| `app_user.dart`     | Usuário autenticado (id, nome, e-mail)             |
| `income.dart`       | Receita (valor, descrição, data, categoria)        |
| `bill.dart`         | Conta a pagar (valor, descrição, vencimento, pago) |
| `category.dart`     | Categoria de receita ou de conta                   |

Formato esperado de cada model:

```dart
class Income {
  const Income({
    required this.id,
    required this.amount,
    required this.description,
    required this.receivedAt,
    required this.category,
  });

  final String id;
  final double amount;
  final String description;
  final DateTime receivedAt;
  final String category;

  factory Income.fromMap(String id, Map<String, dynamic> map) { /* ... */ }

  Map<String, dynamic> toMap() { /* ... */ }

  Income copyWith({ /* ... */ }) { /* ... */ }
}
```
