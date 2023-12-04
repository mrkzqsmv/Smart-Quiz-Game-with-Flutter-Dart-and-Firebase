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
      'New York City is the capital of the United States.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'The Earth is flat.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Water boils at 100 degrees Celsius at sea level.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'Washington is the capital of America.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'The Great Wall of China is the longest wall in the world.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: true),
        TrueFalseAnswer(answerText: 'False', isCorrect: false),
      ],
    ),
  );
  questionlist.add(
    TrueFalseQuestion(
      'The currency of Japan is the Yuan.',
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
      'The Nile River is the longest river in the world.',
      [
        TrueFalseAnswer(answerText: 'True', isCorrect: false),
        TrueFalseAnswer(answerText: 'False', isCorrect: true),
      ],
    ),
  );
  return questionlist;
}
