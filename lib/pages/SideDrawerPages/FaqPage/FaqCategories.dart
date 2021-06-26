import 'package:flutter/material.dart';
import 'package:home_page/Models/FaqQuestions.dart';
import 'package:home_page/pages/SideDrawerPages/FaqPage/QuestionsBuilder.dart';

int selectedIndex=  0;
class FaqCategories extends StatefulWidget {
  const FaqCategories({Key? key}) : super(key: key);

  @override
  _FaqCategoriesState createState() => _FaqCategoriesState();
}

class _FaqCategoriesState extends State<FaqCategories> {
  List<String> categories = ["About Us", "Orders", "Payment"];
  //by default first item will be selected
  int selectedIndex = 1;
  double size = 30;
  int itemCount = aboutUsQuestions.length;
  List<FaqQuestions> questionsList  = aboutUsQuestions;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [

        Padding(
          padding: const EdgeInsets.only(top:100.0),
          child: SingleChildScrollView(
            child: Container(
              child: SizedBox(
                height: size.height*0.5,
                width: size.width,
                child: ListView.builder(
                    itemCount: itemCount,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: questionsBuilder(
                            questions: questionsList[index],
                            ),
                          ),
                        ),
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width,
                  maxHeight: 50,
                  minWidth: size.width,
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainer(1,"About us"),
                    buildContainer(2, "Orders"),
                    buildContainer(3, "Payment")
                  ],
                )
            ),
          ),
        ),

      ]
    );
  }

  GestureDetector buildContainer(int index, String text) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
          // print("index = $index");
          size = 30;
          // print(text);
          if(text == "About us"){
            itemCount = aboutUsQuestions.length;
            questionsList = aboutUsQuestions;
          }else if(text == "Orders"){
            itemCount = ordersQuestion.length;
            questionsList = ordersQuestion;
          }else if(text == "Payment"){
            itemCount = paymentQuestions.length;
            questionsList = paymentQuestions;
          }
          // print(itemCount);
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: selectedIndex==index ? Colors.blueGrey[100] : Colors.transparent,
            borderRadius: BorderRadius.circular(6)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: selectedIndex == index ?  size : 20,
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ?  Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
  }

