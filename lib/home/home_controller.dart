import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/questions_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'home_state.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    state = HomeState.loading;
    user = UserModel(
      name: "Vinicin DEV",
      photoUrl:
          "https://pbs.twimg.com/profile_images/1359563127633960966/NH4ZnCU-_400x400.jpg",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        image: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil,
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(title: "Blalalalalalaalalaalaal", awnsers: [
            AwnserModel(title: "BLililililili"),
            AwnserModel(title: "BLililililila"),
            AwnserModel(title: "BLililililile"),
            AwnserModel(title: "BLilililililu", isRight: true),
          ]),
          QuestionModel(title: "Blalalalalalaalalaalaal", awnsers: [
            AwnserModel(title: "BLililililili"),
            AwnserModel(title: "BLililililila"),
            AwnserModel(title: "BLililililile"),
            AwnserModel(title: "BLilililililu", isRight: true),
          ])
        ],
      )
    ];
    state = HomeState.success;
  }
}
