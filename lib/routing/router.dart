import 'package:dog_quiz/routing/routes.dart';
import 'package:dog_quiz/ui/home_screen.dart';
import 'package:dog_quiz/ui/quiz_screen.dart';
import 'package:dog_quiz/ui/result_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return const HomeScreen();
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