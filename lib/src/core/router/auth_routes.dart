import 'package:go_router/go_router.dart';
import 'package:gpt_chatty/src/features/auth/widget/pages/login/login_page.dart';

final authRoutes = <GoRoute>[
  GoRoute(path: '/', builder: (context, state) => const LoginPage()),
];
