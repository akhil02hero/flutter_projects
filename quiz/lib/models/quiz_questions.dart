// we are creating a interface/model for having multiple questions and answers
// here and it will be something like
// {
//   question:'what do you want to do'
//   answers:['I want to be free','I wnat to change the world','I am perfect','I will sleep']
// }

class QuizQuestion {
  const QuizQuestion(this.question, this.answers,this.correctAnswer);
  final String question;
  final List<String> answers;
  final String correctAnswer;
}
