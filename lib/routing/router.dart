import 'package:dog_quiz/routing/routes.dart';
import 'package:dog_quiz/ui/home/home_screen.dart';
import 'package:dog_quiz/ui/quiz/quiz_screen.dart';
import 'package:dog_quiz/ui/result/result_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home_viewmodel.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return HomeScreen(viewModel: HomeViewModel());
      }
    ),
    GoRoute(
        path: Routes.quiz,
        builder: (context, state) {
          return const QuizScreen();
        }
    ),
    GoRoute(
        path: Routes.results,
        builder: (context, state) {
          return const ResultScreen();
        }
    ),
  ]
);