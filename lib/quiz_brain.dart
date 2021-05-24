import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Teresina é uma cidade relativamente quente.', true),
    Question('São Paulo é uma cidade relativamente quente.', false),
    Question('Alguns gatos são alérgicos a humanos', true),
    Question('Você pode conduzir uma vaca escada abaixo, mas não escada acima.', false),
    Question('Aproximadamente um quarto dos ossos humanos estão nos pés.', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('Nenhum pedaço de papel quadrado seco pode ser dobrado ao meio mais de 7 vezes.', false),
    ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetNumber() {
    _questionNumber = 0;
  }

  int getTotalQuestions() {
    return _questionBank.length;
  }
}