import 'package:flutter/material.dart';

int selectedIndex=  0;
class FaqCategories extends StatefulWidget {
  const FaqCategories({Key? key}) : super(key: key);

  @override
  _FaqCategoriesState createState() => _FaqCategoriesState();
}

class _FaqCategoriesState extends State<FaqCategories> {
  List<String> categories = ["About Us", "Orders", "Payment"];
  //by default first item will be selected
  int selectedIndex = 0;
  double size = 30;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
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
    );
  }

  GestureDetector buildContainer(int index, String text) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
          size = 30;
        });
      },
      child: Container(
        color: selectedIndex==index ? Colors.yellowAccent : Colors.transparent,
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

  // Widget buildCategory(int index){
  //   return GestureDetector(
  //     onTap: (){
  //       setState(() {
  //         selectedIndex = index;
  //       });
  //     },
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  //       color: selectedIndex==index ? Colors.yellowAccent : Colors.transparent,
  //       child: Text(
  //         categories[index],
  //         style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //           color: selectedIndex == index ?  Colors.black : Colors.white,
  //           fontSize: 20
  //         ),
  //       ),
  //     ),
  //   );
  }

