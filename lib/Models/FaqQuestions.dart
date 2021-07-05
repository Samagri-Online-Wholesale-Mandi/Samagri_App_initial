
class Category{
  final String categoryName;
  late List<FaqQuestions> questions;

  Category({required this.categoryName});
}

class FaqQuestions extends Category{
  final String question;
  final String answer;
  final String category;

  FaqQuestions({required this.question, required this.answer, required this.category}) : super(categoryName: category);
}

List<FaqQuestions> aboutUsQuestions = [
  //about us questions
  FaqQuestions(
      question:"From about us question 1",
      answer:"From about us answer 1",
      category:"About US"
  ),
  FaqQuestions(
      question:"From about us questions 2",
      answer:"From about us answers 2",
      category:"About US"
  ),
  FaqQuestions(
      question:"From about us questions 3",
      answer:"From about us answers 3",
      category:"About US"
  ),
  FaqQuestions(
      question:"From about us questions 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae ",
      answer:"From about us answers 4",
      category:"About US"
  ),
  FaqQuestions(
      question:"From about us questions 5",
      answer:"From about us answers 5",
      category:"About US"
  ),
  FaqQuestions(
      question:"From about us questions 5",
      answer:"From about us answers 5",
      category:"About US"
  ),
];

List<FaqQuestions> ordersQuestion = [
  FaqQuestions(
      question:"From Orders question 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint",
      answer:"From Orders answer 1",
      category:"Orders"
  ),
  FaqQuestions(
      question:"From Orders question 2",
      answer:"From Orders answer 2",
      category:"Orders"
  ),
  FaqQuestions(
      question:"From Orders question 3",
      answer:"From Orders answer 3",
      category:"Orders"
  ),
  FaqQuestions(
      question:"From Orders question 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia",
      answer:"From Orders answer 4",
      category:"Orders"
  ),
  FaqQuestions(
      question:"From Orders question 5",
      answer:"From Orders answer 5",
      category:"Orders"
  ),
];


List<FaqQuestions> paymentQuestions = [
  FaqQuestions(
      question:"From Payment question 1",
      answer:" From Payment answer 1",
      category:"Payment"
  ),
  FaqQuestions(
      question:"From Payment question 2",
      answer:"From Payment answer 2",
      category:"Payment"
  ),
  FaqQuestions(
      question:"From Payment question  3",
      answer:"From Payment answer 3",
      category:"Payment"
  ),
];