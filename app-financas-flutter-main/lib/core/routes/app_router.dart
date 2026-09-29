import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screens/auth/sign_in_screen.dart';
import '../../screens/auth/sign_up_screen.dart';
import '../../screens/bills/bill_form_screen.dart';
import '../../screens/bills/bills_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/incomes/income_form_screen.dart';
import '../../screens/incomes/incomes_screen.dart';
import '../../screens/shell/app_shell.dart';
import 'app_routes.dart';

/// Configuração de navegação do app.
///
/// O mapa de rotas segue o wireframe:
///
/// ```
/// /login                  → entrar
/// /cadastro               → criar conta
/// ┌ shell com bottom nav ────────────────┐
/// │ /inicio                → resumo       │
/// │ /receitas              → lançamentos  │
/// │   └ /receitas/nova     → formulário   │
/// │ /contas                → contas       │
/// │   └ /contas/nova       → formulário   │
/// └───────────────────────────────────────┘
/// ```
///
/// O `StatefulShellRoute` mantém o estado de cada aba ao alternar entre elas —
/// a rolagem da lista de receitas não se perde quando o usuário visita contas
/// e volta.
abstract final class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.signInPath,
    debugLogDiagnostics: true,

    // TODO(aula-auth): redirecionar conforme o estado de autenticação.
    // Quando o AuthService existir, algo nesta linha:
    //
    // redirect: (context, state) {
    //   final bool signedIn = AuthService.instance.currentUser != null;
    //   final bool goingToAuth = state.matchedLocation == AppRoutes.signInPath ||
    //       state.matchedLocation == AppRoutes.signUpPath;
    //
    //   if (!signedIn && !goingToAuth) return AppRoutes.signInPath;
    //   if (signedIn && goingToAuth) return AppRoutes.homePath;
    //   return null;
    // },
    // refreshListenable: ... // notifica o router quando o login muda
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.signInPath,
        name: AppRoutes.signIn,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRoutes.signUpPath,
        name: AppRoutes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppShell(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.homePath,
                name: AppRoutes.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.incomesPath,
                name: AppRoutes.incomes,
                builder: (context, state) => const IncomesScreen(),
                routes: <RouteBase>[
                  GoRoute(
                    path: AppRoutes.incomeFormPath,
                    name: AppRoutes.incomeForm,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const IncomeFormScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.billsPath,
                name: AppRoutes.bills,
                builder: (context, state) => const BillsScreen(),
                routes: <RouteBase>[
                  GoRoute(
                    path: AppRoutes.billFormPath,
                    name: AppRoutes.billForm,
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) => const BillFormScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Rota não encontrada:\n${state.uri}',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
