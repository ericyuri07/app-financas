# services/

Onde o app conversa com o mundo de fora — no nosso caso, o Firebase.

Toda chamada a `FirebaseAuth` ou `FirebaseFirestore` mora aqui. As telas nunca
importam o Firebase diretamente: elas chamam um service e recebem models de
volta. Se um dia trocarmos o Firestore por uma API REST, só esta pasta muda.

Services previstos (criados em aula, um por vez):

| Arquivo                | Responsabilidade                                      |
|------------------------|-------------------------------------------------------|
| `auth_service.dart`    | Login, cadastro, logout e usuário atual               |
| `income_service.dart`  | CRUD de receitas no Firestore                         |
| `bill_service.dart`    | CRUD de contas a pagar e marcação de pagamento        |

Formato esperado de um service:

```dart
class IncomeService {
  IncomeService({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Stream<List<Income>> watchByMonth(String userId, DateTime month) { /* ... */ }

  Future<void> create(String userId, Income income) { /* ... */ }

  Future<void> delete(String userId, String incomeId) { /* ... */ }
}
```

Estrutura de dados sugerida no Firestore:

```
users/{userId}
  ├── incomes/{incomeId}
  └── bills/{billId}
```
