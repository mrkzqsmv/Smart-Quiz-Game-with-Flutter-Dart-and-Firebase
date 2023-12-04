class Question {
  final String questionText;
  List<Answer> answersList;
  Question(
    this.questionText,
    this.answersList,
  );
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer({
    required this.answerText,
    required this.isCorrect,
  });
}

List<Question> getQuestions() {
  List<Question> list = [];
  //add questions and answers here
  list.add(
    Question(
      'What is the largest mammal on Earth?',
      [
        Answer(answerText: 'Blue Whale', isCorrect: true),
        Answer(answerText: 'Elephant', isCorrect: false),
        Answer(answerText: 'Giraffe', isCorrect: false),
        Answer(answerText: 'Hippopotamus', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'In which year did the Titanic sink?',
      [
        Answer(answerText: '1912', isCorrect: true),
        Answer(answerText: '1905', isCorrect: false),
        Answer(answerText: '1925', isCorrect: false),
        Answer(answerText: '1930', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Who painted the Mona Lisa?',
      [
        Answer(answerText: 'Leonardo da Vinci', isCorrect: true),
        Answer(answerText: 'Vincent van Gogh', isCorrect: false),
        Answer(answerText: 'Pablo Picasso', isCorrect: false),
        Answer(answerText: 'Claude Monet', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Which element has the chemical symbol "H"?',
      [
        Answer(answerText: 'Hydrogen', isCorrect: true),
        Answer(answerText: 'Helium', isCorrect: false),
        Answer(answerText: 'Oxygen', isCorrect: false),
        Answer(answerText: 'Nitrogen', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'What is the currency of Japan?',
      [
        Answer(answerText: 'Yen', isCorrect: true),
        Answer(answerText: 'Won', isCorrect: false),
        Answer(answerText: 'Dollar', isCorrect: false),
        Answer(answerText: 'Euro', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Who wrote "To Kill a Mockingbird"?',
      [
        Answer(answerText: 'Harper Lee', isCorrect: true),
        Answer(answerText: 'J.K. Rowling', isCorrect: false),
        Answer(answerText: 'Ernest Hemingway', isCorrect: false),
        Answer(answerText: 'George Orwell', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'What is the capital of Brazil?',
      [
        Answer(answerText: 'Brasília', isCorrect: true),
        Answer(answerText: 'Rio de Janeiro', isCorrect: false),
        Answer(answerText: 'Sao Paulo', isCorrect: false),
        Answer(answerText: 'Buenos Aires', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Which famous scientist developed the theory of general relativity?',
      [
        Answer(answerText: 'Albert Einstein', isCorrect: true),
        Answer(answerText: 'Isaac Newton', isCorrect: false),
        Answer(answerText: 'Galileo Galilei', isCorrect: false),
        Answer(answerText: 'Stephen Hawking', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'What is the largest ocean on Earth?',
      [
        Answer(answerText: 'Pacific Ocean', isCorrect: true),
        Answer(answerText: 'Atlantic Ocean', isCorrect: false),
        Answer(answerText: 'Indian Ocean', isCorrect: false),
        Answer(answerText: 'Arctic Ocean', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Who is known as the "Father of Computers"?',
      [
        Answer(answerText: 'Charles Babbage', isCorrect: true),
        Answer(answerText: 'Alan Turing', isCorrect: false),
        Answer(answerText: 'Steve Jobs', isCorrect: false),
        Answer(answerText: 'Bill Gates', isCorrect: false),
      ],
    ),
  );
  return list;
}
