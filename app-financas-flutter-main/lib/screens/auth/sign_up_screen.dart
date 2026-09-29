import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../widgets/screen_placeholder.dart';

/// Tela de cadastro (wireframe 5).
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.signUp)),
      body: const SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.person_add_alt_1_outlined,
          title: AppStrings.signUp,
          steps: <String>[
            'Formulário com nome, e-mail, senha e confirmação',
            'Validação com Validators.email / password / passwordConfirmation',
            'Criação da conta via FirebaseAuth.createUserWithEmailAndPassword',
            'Gravação do perfil do usuário no Firestore',
          ],
        ),
      ),
    );
  }
}
