
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

List<FaqQuestions> questions = [
  //about us questions
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"About US"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"About US"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"About US"
  ),
  //Orders questions
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Orders"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Orders"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Orders"
  ),
  //payment questions
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Payment"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Payment"
  ),
  FaqQuestions(
      question:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, mi eget placerat tempor, diam erat varius arcu, non vestibulum diam enim vitae diam",
      answer:" Nullam dolor orci, tincidunt vel elit accumsan, lacinia imperdiet erat. Aliquam eget molestie tortor",
      category:"Payment"
  ),

];