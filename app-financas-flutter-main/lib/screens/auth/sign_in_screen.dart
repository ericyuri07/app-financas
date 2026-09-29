import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../widgets/screen_placeholder.dart';

/// Tela de login (wireframe 1).
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ScreenPlaceholder(
          icon: Icons.lock_outline_rounded,
          title: AppStrings.signIn,
          steps: <String>[
            'Logo, nome do app e frase de apoio',
            'Campos de e-mail e senha usando AppTextField',
            'Botão "Entrar" e link "Esqueci minha senha"',
            'Botão secundário "Criar conta" navegando para /cadastro',
            'Autenticação via FirebaseAuth.signInWithEmailAndPassword',
          ],
        ),
      ),
    );
  }
}
