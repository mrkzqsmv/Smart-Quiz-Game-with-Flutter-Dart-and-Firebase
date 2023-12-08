class TrueFalseQuestion {
  final String questionText;
  List<TrueFalseAnswer> answersList;
  TrueFalseQuestion(
    this.questionText,
    this.answersList,
  );
}

class TrueFalseAnswer {
  final String answerText;
  final bool isCorrect;
  TrueFalseAnswer({
    required this.answerText,
    required this.isCorrect,
  });
}

List<TrueFalseQuestion> getQuestions() {
  List<TrueFalseQuestion> questionlist = [];
  questionlist.add(
    TrueFalseQuestion(
      'Nyu-York şəhəri ABŞ-ın paytaxtıdır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Yer düzdür.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Su dəniz səviyyəsində 100 dərəcə Selsidə qaynayır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Vaşinqton Amerikanın paytaxtıdır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Böyük Çin Səddin dünyanın ən uzun divarıdır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Yaponiyanın pul vahidi yuandır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Mount Everest is the highest mountain in the world.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Everest dağı dünyanın ən hündür dağıdır.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  return questionlist;
}
