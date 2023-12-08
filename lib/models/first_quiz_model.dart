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
      'Dünyanın ən böyük məməlisi hansıdır?',
      [
        Answer(answerText: 'Mavi balina', isCorrect: true),
        Answer(answerText: 'Fil', isCorrect: false),
        Answer(answerText: 'Qiraf', isCorrect: false),
        Answer(answerText: 'İppopotam', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Bir saat neçə dəqiqədir ?',
      [
        Answer(answerText: '60 dəqiqə', isCorrect: true),
        Answer(answerText: '45 dəqiqə', isCorrect: false),
        Answer(answerText: '30 dəqiqə', isCorrect: false),
        Answer(answerText: '90 dəqiqə', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Monna Liza kim tərəfindən çəkilmişdir?',
      [
        Answer(answerText: 'Leonardo da Vinçi', isCorrect: true),
        Answer(answerText: 'Vincent van Qoq', isCorrect: false),
        Answer(answerText: 'Pablo Pikasso', isCorrect: false),
        Answer(answerText: 'Klod Mone', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Hansı elementin kimyəvi simvolu "H"-dır?',
      [
        Answer(answerText: 'Hidrogen', isCorrect: true),
        Answer(answerText: 'Gelium', isCorrect: false),
        Answer(answerText: 'Oksigen', isCorrect: false),
        Answer(answerText: 'Azot', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Yaponiyanın valyutası nədir?',
      [
        Answer(answerText: 'Yen', isCorrect: true),
        Answer(answerText: 'Von', isCorrect: false),
        Answer(answerText: 'Dollar', isCorrect: false),
        Answer(answerText: 'Avro', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      '"Ürək Saldırmaq Üçün Bülbülü Öldür" kim tərəfindən yazılmışdır?',
      [
        Answer(answerText: 'Harper Li', isCorrect: true),
        Answer(answerText: 'C.K. Rowling', isCorrect: false),
        Answer(answerText: 'Ərnst Heminqvey', isCorrect: false),
        Answer(answerText: 'Corc Oruell', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Braziliyanın paytaxtı hansıdır?',
      [
        Answer(answerText: 'Brasiliya', isCorrect: true),
        Answer(answerText: 'Rio de Janeyro', isCorrect: false),
        Answer(answerText: 'San Paulo', isCorrect: false),
        Answer(answerText: 'Buenos Ayres', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Kimyəvi nisbətdə genərləşmə teorisini kim təklif edib?',
      [
        Answer(answerText: 'Albert Aynshteyn', isCorrect: true),
        Answer(answerText: 'İsaak Nyuton', isCorrect: false),
        Answer(answerText: 'Qalileo Qalilei', isCorrect: false),
        Answer(answerText: 'Stiven Haukinq', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      'Dünyanın ən böyük okeanı hansıdır?',
      [
        Answer(answerText: 'Pasifik Okeanı', isCorrect: true),
        Answer(answerText: 'Atlantik Okeanı', isCorrect: false),
        Answer(answerText: 'Hind Okeanı', isCorrect: false),
        Answer(answerText: 'Arktik Okeanı', isCorrect: false),
      ],
    ),
  );

  list.add(
    Question(
      '"Kompüterlərin atası" kimi tanınan kimdir?',
      [
        Answer(answerText: 'Çarlz Babac', isCorrect: true),
        Answer(answerText: 'Alan Tyrinq', isCorrect: false),
        Answer(answerText: 'Stiv Coxs', isCorrect: false),
        Answer(answerText: 'Bill Qeyts', isCorrect: false),
      ],
    ),
  );

  return list;
}
